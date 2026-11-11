#include <stdio.h>

#include "SLBL_System.hpp"
#include "math.h"
#include "Angle_Normalization.hpp"
#include "User_Math.hpp"


static PID Current_Limit_PID(1.5,2.5,0,sensorless_foc::Dt,10,10);
static PID Omega_PID(0,1,0,0.00003333333333,50000,5000);
static PID Vector_PID(1,1,0,0.00003333333333,M_PI,M_PI);
static PID Theta_PID(1,1,0,0.00003333333333,M_PI,M_PI);

SLBL_System::SLBL_System(){
    MCPWM_Start();
    
    Use_ADC *use_adc = new Use_ADC(3.3,20);
    
    use_adc->ADC_Calibration();
    this->ADC0_Quiescent = use_adc->Get_ADC0_Quiescent();
    this->ADC2_Quiescent = use_adc->Get_ADC2_Quiescent();
    this->ADC_to_Current_C = use_adc->Get_ADC_to_Current_C();
    
    this->M_V2806.Motor_Kv = 400.0;
    this->M_V2806.Motor_L_Ave = (296.0 / 1.0) /1000000.0;
    this->M_V2806.Motor_R = (640.0 / 1.0)/1000.0;
    this->M_V2806.Motor_Pole_Pair = 7.0;
    this->M_V2806.Motor_a = expf(-(M_V2806.Motor_R/M_V2806.Motor_L_Ave)*sensorless_foc::Dt);
    this->M_V2806.Motor_b = (1.0F - M_V2806.Motor_a)/M_V2806.Motor_R;
    
    this->estimate_current.alpha_current = 0;
    this->estimate_current.beta_current = 0;
    
    this->err_alpha_current = 0;
    this->err_beta_current = 0;
    
    //SLBL_System::V_F_Const = SLBL_System::PWM_Res / ((SLBL_System::Motor_Kv * 11 * 2 * M_PI / 60) * SLBL_System::Supply_Volt);    
}

void SLBL_System::Go_IPD(){
    SLBL_IPD * slbl_ipd = new SLBL_IPD(1900,2200);
    this->motor_pos.Angle = slbl_ipd->IPD_Start();
    delete slbl_ipd;
    
    this->angle_norm.Set_Angle_Before(this->motor_pos.Angle);
    
    MCPWM_Stop();
}

void SLBL_System::Open_Loop(){
    this->motor_pos.Tar_Angle = this->angle_norm.Angle_Add(
        sensorless_foc::StartupMechanicalHz * this->M_V2806.Motor_Pole_Pair * _2M_PI * sensorless_foc::Dt);
    MCPWM_Start();
    this->Update_Observer();
    const float current_fb = sqrtf(measure_current.alpha_current * measure_current.alpha_current
                                  + measure_current.beta_current * measure_current.beta_current);
    const float volt = Current_Limit_PID.PID_controller(1.0f - current_fb);
    this->user_pwm.Vector_Voltage_Duty(this->motor_pos.Tar_Angle, volt);
}

void SLBL_System::Update_Observer(){
    float z_alpha_bemf = 0;
    float z_beta_bemf = 0;
    
    static float alpha_bemf = 0;
    static float beta_bemf = 0;
    
    const float k_slide = 12.0f;
    // With z subtracted below and err = measured - estimated, z = -K*sat(err/h).
    // Keep |Motor_a - Motor_b*K/h| < 1 in the boundary layer.
    const float current_boundary = 1.6f;
    
    // Sample every second PWM cycle, allowing the FOC computation to finish.
    static uint32_t last_sample_tick = pwm_tick;
    uint32_t sample_tick;
    do { sample_tick = pwm_tick; }
    while((uint32_t)(sample_tick - last_sample_tick) < sensorless_foc::SampleDivider);
    last_sample_tick = sample_tick;
    // PIC32 core timer runs at SYSCLK/2 = 60 MHz in this project.
    const uint32_t core_tick = _CP0_GET_COUNT();
    static uint32_t last_core_tick = 0;
    const uint32_t core_elapsed = core_tick - last_core_tick;
    if(last_core_tick != 0 && core_elapsed != 0){
        const float sample_hz = 60000000.0f / (float)core_elapsed;
        FOC_Sample_Hz += 0.01f * (sample_hz - FOC_Sample_Hz);
    }
    last_core_tick = core_tick;
    match_flag = 0;
    
    this->Current_UVWtoAlpha_Beta();
        
    
    this->err_alpha_current = this->measure_current.alpha_current - this->estimate_current.alpha_current;
    this->err_beta_current = this->measure_current.beta_current - this->estimate_current.beta_current; 
    
    if(this->err_alpha_current > current_boundary){
        z_alpha_bemf = k_slide * (-1);
    }else if(this->err_alpha_current < -current_boundary){
        z_alpha_bemf = k_slide * (1);
    }else {
        z_alpha_bemf = -k_slide * this->err_alpha_current / current_boundary;
    }
    
    if(this->err_beta_current > current_boundary){
        z_beta_bemf = k_slide * (-1);
    }else if(this->err_beta_current < -current_boundary){
        z_beta_bemf = k_slide * 1;
    }else {
        z_beta_bemf = -k_slide * this->err_beta_current / current_boundary;
    }
    
    // Current uses the power-invariant Clarke transform; PWM voltage uses
    // amplitude-invariant coordinates. Convert voltage to the current basis.
    this->estimate_current.alpha_current = this->M_V2806.Motor_a * this->estimate_current.alpha_current + this->M_V2806.Motor_b * (SQRT_3_SQRT_2 * this->user_pwm.alpha_v - z_alpha_bemf);
    this->estimate_current.beta_current = this->M_V2806.Motor_a * this->estimate_current.beta_current + this->M_V2806.Motor_b * (SQRT_3_SQRT_2 * this->user_pwm.beta_v - z_beta_bemf);
    

    // Filter the SMO injection before extracting its angle, not the wrapped angle.
    // 200 Hz nominal cutoff at Delta_t; this affects observation only.
    static const float bemf_filter_gain = 1.0f - expf(-_2M_PI * sensorless_foc::BemfCutoffHz * sensorless_foc::Dt);
    alpha_bemf += bemf_filter_gain * (z_alpha_bemf - alpha_bemf);
    beta_bemf += bemf_filter_gain * (z_beta_bemf - beta_bemf);
    // Signed shortest angle difference in radians, in [-pi, pi].
    // Žw—ßŠp‚Æ„’è‹t‹N“d—ÍŠp‚ðA‚»‚ê‚¼‚ê“¯‚¶”ÍˆÍ‚Å•\Ž¦
    Debug_Data  = remainderf(angle_norm.Get_Angle_Before(), _2M_PI);
    Debug_Data2 = atan2f(beta_bemf, alpha_bemf);
    Debug_Bemf_Amplitude = sqrtf(alpha_bemf * alpha_bemf + beta_bemf * beta_bemf);
    Debug_Current_Error = sqrtf(err_alpha_current * err_alpha_current + err_beta_current * err_beta_current);
    
}

void SLBL_System::Current_UVWtoAlpha_Beta(){
    while(!ADCHS_ChannelResultIsReady(ADCHS_CH0) || !ADCHS_ChannelResultIsReady(ADCHS_CH2));
    
    this->measure_current.u_current = SLBL_System::ADC_to_Current_C *(float)((int16_t)ADCHS_ChannelResultGet(ADCHS_CH2) - (int16_t)SLBL_System::ADC2_Quiescent);
    this->measure_current.w_current = SLBL_System::ADC_to_Current_C *(float)((int16_t)ADCHS_ChannelResultGet(ADCHS_CH0) - (int16_t)SLBL_System::ADC0_Quiescent);
    this->measure_current.v_current = -(this->measure_current.u_current + this->measure_current.w_current);
    
    this->measure_current.alpha_current = (SQRT_2_SQRT_3 *(this->measure_current.u_current - this->measure_current.v_current * 0.5 - this->measure_current.w_current * 0.5)); 
    this->measure_current.beta_current =  (SQRT_2_SQRT_3 * (this->measure_current.v_current * (SQRT_3_2) - this->measure_current.w_current * (SQRT_3_2)));

}


void SLBL_System::Mode_Set(Control_Mode mode){
    SLBL_System::Mode = mode;
}

float SLBL_System::Data_Get(){
    return SLBL_System::Debug_Data;
}

float SLBL_System::Data2_Get(){
    return SLBL_System::Debug_Data2;
}

float SLBL_System::Bemf_Amplitude_Get(){
    return SLBL_System::Debug_Bemf_Amplitude;
}

float SLBL_System::Current_Error_Get(){
    return SLBL_System::Debug_Current_Error;
}

volatile Control_Mode SLBL_System::Mode = Default_Mode;

volatile float SLBL_System::Supply_Volt = 12;

volatile uint16_t SLBL_System::ADC_Buf = 0;
volatile float SLBL_System::ADC_to_Current_C = 0.04029304029;
volatile uint16_t SLBL_System::ADC0_Quiescent = 2048;
volatile uint16_t SLBL_System::ADC2_Quiescent = 2048;


volatile float SLBL_System::Abs_Current = 0;
volatile float SLBL_System::Max_Current = 3;

volatile float SLBL_System::Max_Duty = 300;
volatile float SLBL_System::PWM_Res = 1000;

volatile float SLBL_System::Debug_Data = 0;
volatile float SLBL_System::Debug_Data2 = 0;
volatile float SLBL_System::Debug_Bemf_Amplitude = 0;
volatile float SLBL_System::Debug_Current_Error = 0;

void SLBL_System::Stop_Vector_Output(){
    // Match the existing gate-driver fault handler: force all six gates low.
    IOCON3bits.OVRDAT = 0;
    IOCON5bits.OVRDAT = 0;
    IOCON6bits.OVRDAT = 0;
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_3);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_5);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_6);
    this->user_pwm.alpha_v = 0.0f;
    this->user_pwm.beta_v = 0.0f;
}

void SLBL_System::Vector_Control(){
    if(vector_controller.state == sensorless_foc::Fault){
        this->Stop_Vector_Output();
        return;
    }
    // Retain the startup sequence whose 3 Hz operation was verified on hardware.
    if(vector_controller.state == sensorless_foc::Starting){
        this->Open_Loop();
    }else{
        this->Update_Observer();
    }
    if(fabsf(measure_current.u_current) > sensorless_foc::CurrentTripA ||
       fabsf(measure_current.v_current) > sensorless_foc::CurrentTripA ||
       fabsf(measure_current.w_current) > sensorless_foc::CurrentTripA){
        vector_controller.Trip(sensorless_foc::OverCurrent);
    }
    // The observer is power-invariant; the FOC PI uses phase-peak amperes.
    sensorless_foc::Input in = {
        Debug_Data2, Debug_Bemf_Amplitude,
        SQRT_2_SQRT_3 * measure_current.alpha_current,
        SQRT_2_SQRT_3 * measure_current.beta_current,
        user_pwm.alpha_v, user_pwm.beta_v,
        angle_norm.Get_Angle_Before()
    };
    vector_controller.Step(in);
    if(vector_controller.state == sensorless_foc::Running){
        Mode = Vector_Mode;
        user_pwm.Alpha_Beta_Voltage_Duty(vector_controller.voltage_alpha,
                                       vector_controller.voltage_beta);
    }else if(vector_controller.state == sensorless_foc::Fault){
        this->Stop_Vector_Output();
    }
    const uint32_t elapsed_tick = (uint32_t)(_CP0_GET_COUNT() - FOC_Start_Tick);
    FOC_Elapsed_Ms = elapsed_tick / 60000U;
    if(vector_controller.state == sensorless_foc::Running && FOC_ClosedLoop_Time_Ms == 0){
        FOC_ClosedLoop_Time_Ms = FOC_Elapsed_Ms;
    }
    static uint32_t in_target_start_tick = 0;
    if(vector_controller.state == sensorless_foc::Running &&
       fabsf(vector_controller.mechanical_hz - sensorless_foc::TargetMechanicalHz) <= 0.5f){
        if(in_target_start_tick == 0) in_target_start_tick = elapsed_tick;
        if(FOC_Target_Time_Ms == 0 && (uint32_t)(elapsed_tick - in_target_start_tick) >= 3000000U){
            // First entry into a +/-1% band, confirmed by a 50 ms continuous hold.
            FOC_Target_Time_Ms = in_target_start_tick / 60000U;
        }
    }else{
        in_target_start_tick = 0;
    }
    FOC_Phase_Error = vector_controller.phase_error_rms;
    FOC_Startup_Phase_Error = vector_controller.startup_phase_error_mean;
    FOC_Speed_Hz = vector_controller.mechanical_hz;
    FOC_Target_Hz = vector_controller.reference_hz;
    FOC_Id = vector_controller.current_d;
    FOC_Iq = vector_controller.current_q;
    FOC_Iq_Ref = vector_controller.reference_q;
    FOC_Voltage = sqrtf(user_pwm.alpha_v * user_pwm.alpha_v + user_pwm.beta_v * user_pwm.beta_v);
    FOC_State = (uint8_t)vector_controller.state;
    FOC_Fault = (uint8_t)vector_controller.fault;
}

volatile float SLBL_System::FOC_Speed_Hz = 0;
volatile float SLBL_System::FOC_Target_Hz = sensorless_foc::StartupMechanicalHz;
volatile float SLBL_System::FOC_Id = 0;
volatile float SLBL_System::FOC_Iq = 0;
volatile float SLBL_System::FOC_Iq_Ref = 0;
volatile float SLBL_System::FOC_Voltage = 0;
volatile float SLBL_System::FOC_Sample_Hz = 0;
volatile float SLBL_System::FOC_Phase_Error = 0;
volatile float SLBL_System::FOC_Startup_Phase_Error = 0;
volatile uint8_t SLBL_System::FOC_State = sensorless_foc::Starting;
volatile uint8_t SLBL_System::FOC_Fault = sensorless_foc::NoFault;
volatile uint32_t SLBL_System::FOC_Start_Tick = 0;
volatile uint32_t SLBL_System::FOC_Elapsed_Ms = 0;
volatile uint32_t SLBL_System::FOC_Target_Time_Ms = 0;

volatile uint32_t SLBL_System::FOC_ClosedLoop_Time_Ms = 0;
