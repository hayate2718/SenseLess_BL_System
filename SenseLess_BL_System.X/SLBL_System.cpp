#include <stdio.h>

#include "SLBL_System.hpp"
#include "math.h"
#include "Angle_Normalization.hpp"
#include "User_Math.hpp"


static PID Current_Limit_PID(1.5,2.5,0,0.00003333333333,10,10);
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
    this->M_V2806.Motor_a = expf(-(M_V2806.Motor_R/M_V2806.Motor_L_Ave)*Delta_t);
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
    static float vel = 3;
    static float volt = 0;
    static uint32_t count = 0;
    float current_fb = 0;
    float current_fb_est = 0;
    float z_alpha_bemf = 0;
    float z_beta_bemf = 0;
    
    static float alpha_bemf = 0;
    static float beta_bemf = 0;
    
    const float k_slide = 12.0f;
    // With z subtracted below and err = measured - estimated, z = -K*sat(err/h).
    // Keep |Motor_a - Motor_b*K/h| < 1 in the boundary layer.
    const float current_boundary = 1.6f;
    
    this->motor_pos.Tar_Angle = this->angle_norm.Angle_Add(vel*7*_2M_PI/30000);
    MCPWM_Start();
    while(!match_flag);
    this->Current_UVWtoAlpha_Beta();
    current_fb = sqrtf(measure_current.alpha_current * measure_current.alpha_current + measure_current.beta_current * measure_current.beta_current);
        
    
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
    static const float bemf_filter_gain = 1.0f - expf(-_2M_PI * 200.0f * Delta_t);
    alpha_bemf += bemf_filter_gain * (z_alpha_bemf - alpha_bemf);
    beta_bemf += bemf_filter_gain * (z_beta_bemf - beta_bemf);
    // Signed shortest angle difference in radians, in [-pi, pi].
    // Žw—ßŠp‚Æ„’è‹t‹N“d—ÍŠp‚ðA‚»‚ê‚¼‚ê“¯‚¶”ÍˆÍ‚Å•\Ž¦
    Debug_Data  = remainderf(angle_norm.Get_Angle_Before(), _2M_PI);
    Debug_Data2 = atan2f(beta_bemf, alpha_bemf);
    Debug_Bemf_Amplitude = sqrtf(alpha_bemf * alpha_bemf + beta_bemf * beta_bemf);
    Debug_Current_Error = sqrtf(err_alpha_current * err_alpha_current + err_beta_current * err_beta_current);
    
    current_fb_est = sqrtf(estimate_current.alpha_current * estimate_current.alpha_current + estimate_current.beta_current * estimate_current.beta_current);
    volt = Current_Limit_PID.PID_controller(1 - current_fb);
    this->user_pwm.Vector_Voltage_Duty(this->motor_pos.Tar_Angle,volt);
    count++;
    match_flag = 0;
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

