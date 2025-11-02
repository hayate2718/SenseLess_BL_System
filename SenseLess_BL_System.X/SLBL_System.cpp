#include <stdio.h>

#include "SLBL_System.hpp"
#include "math.h"



static PID Current_Limit_PID(15,30,0,0.00003333333333,1000,1000);
static PID Omega_PID(0,1,0,0.00003333333333,50000,5000);
static PID Vector_PID(1,1,0,0.00003333333333,M_PI,M_PI);
static PID Theta_PID(1,1,0,0.00003333333333,M_PI,M_PI);

SLBL_System::SLBL_System():IPD_Stat(0){
    MCPWM_Start();
    
    MCPWM_CallbackRegister(MCPWM_CH_3,SLBL_System::MCPWM3_Match_Handler,NULL);
    
    Use_ADC *use_adc = new Use_ADC(3.3,20);
    
    use_adc->ADC_Calibration();
    this->ADC0_Quiescent = use_adc->Get_ADC0_Quiescent();
    this->ADC2_Quiescent = use_adc->Get_ADC2_Quiescent();
    this->ADC_to_Current_C = use_adc->Get_ADC_to_Current_C();
    
    //SLBL_System::V_F_Const = SLBL_System::PWM_Res / ((SLBL_System::Motor_Kv * 11 * 2 * M_PI / 60) * SLBL_System::Supply_Volt);    
}

void SLBL_System::Go_IPD(){
    SLBL_IPD * slbl_ipd = new SLBL_IPD(2000,2100);
    slbl_ipd->IPD_Start();
    delete slbl_ipd;
    
    MCPWM_Stop();
}

/*
void SLBL_System::Current_UVWtoAlpha_Beta(){
    while(!ADCHS_ChannelResultIsReady(ADCHS_CH0) || !ADCHS_ChannelResultIsReady(ADCHS_CH2));
    
    SLBL_System::U_FB_Curent =0.5 * SLBL_System::U_FB_Curent + 0.5 * (SLBL_System::ADC_to_Current_C *(float)(ADCHS_ChannelResultGet(ADCHS_CH2) - SLBL_System::ADC2_Quiescent));
    SLBL_System::W_FB_Curent =0.5 * SLBL_System::W_FB_Curent + 0.5 *(SLBL_System::ADC_to_Current_C *(float)(ADCHS_ChannelResultGet(ADCHS_CH0) - SLBL_System::ADC0_Quiescent));
    SLBL_System::V_FB_Curent = -(SLBL_System::U_FB_Curent + SLBL_System::W_FB_Curent);
    
    SLBL_System::Alpha_Current = (SQRT_2_SQRT_3 *(SLBL_System::U_FB_Curent - SLBL_System::V_FB_Curent * 0.5 - SLBL_System::W_FB_Curent * 0.5)); 
    SLBL_System::Beta_Current =  (SQRT_2_SQRT_3 * (SLBL_System::V_FB_Curent * (SQRT_3_2) - SLBL_System::W_FB_Curent * (SQRT_3_2)));

}

*/


void SLBL_System::System_Control(){
    if(SLBL_System::IPD_Start_Flag == true){
        this->IPD_Start();
        SLBL_System::IPD_Start_Flag = false;
    }else if(SLBL_System::IPD_Flag == true){
        
    }
}

void SLBL_System::Mode_Set(uint8_t mode){
    SLBL_System::Control_Mode = mode;
}


void SLBL_System::Target_Omega_Set(float omega){
    SLBL_System::Target_Omega = omega;
}

void SLBL_System::Max_Duty_Set(float duty){
    SLBL_System::Max_Duty = duty;
}

float SLBL_System::Est_Omega_Get(){
    return SLBL_System::Est_Omega;
}

float SLBL_System::Data_Get(){
    return SLBL_System::Debug_Data;
}

float SLBL_System::Data2_Get(){
    return SLBL_System::Debug_Data2;
}

volatile uint8_t SLBL_System::Control_Mode = Default_Mode;

volatile float SLBL_System::Supply_Volt = 15;

volatile uint16_t SLBL_System::ADC_Buf = 0;
volatile float SLBL_System::ADC_to_Current_C = 0.04029304029;
volatile uint16_t SLBL_System::ADC0_Quiescent = 2048;
volatile uint16_t SLBL_System::ADC2_Quiescent = 2048;

volatile float SLBL_System::U_FB_Curent = 0;
volatile float SLBL_System::V_FB_Curent = 0;
volatile float SLBL_System::W_FB_Curent = 0;

volatile float SLBL_System::Abs_Current = 0;
volatile float SLBL_System::Max_Current = 3;

volatile float SLBL_System::Alpha_Current = 0;
volatile float SLBL_System::Alpha_Current_Before = 0;
volatile float SLBL_System::Alpha_Current_Delta = 0;
volatile float SLBL_System::Alpha_Current_Delta_Before = 0;
volatile float SLBL_System::Alpha_Current_Tar = 0;

volatile float SLBL_System::Beta_Current = 0;
volatile float SLBL_System::Beta_Current_Before = 0;
volatile float SLBL_System::Beta_Current_Delta = 0;
volatile float SLBL_System::Beta_Current_Delta_Before = 0;
volatile float SLBL_System::Beta_Current_Tar = 0;

volatile float SLBL_System::Gamma_Current = 0;
volatile float SLBL_System::Gamma_Current_Delta = 0;
volatile float SLBL_System::Gamma_Current_Before = 0;
volatile float SLBL_System::Gamma_Current_Est = 0;
volatile float SLBL_System::Gamma_Current_Tar = 0;

volatile float SLBL_System::Delta_Current = 0;
volatile float SLBL_System::Delta_Current_Delta = 0;
volatile float SLBL_System::Delta_Current_Before = 0;
volatile float SLBL_System::Delta_Current_Est = 0;


volatile float SLBL_System::Motor_Kv = 380;
volatile float SLBL_System::Motor_Pole = 11;
volatile float SLBL_System::Motor_R = 0.193; //ohm
volatile float SLBL_System::Motor_L = 0.025; //mH
volatile float SLBL_System::Motor_Ld = 0.02;
volatile float SLBL_System::Motor_Lq = 0.035;
volatile float SLBL_System::Motor_Ldq_delta = 0.015;  
volatile float SLBL_System::Motor_Phi =  2 * 60 / (380 * 11 * 2 * M_PI); // 60 / (kv * 22 * 2 * M_PI)

volatile float SLBL_System::Alpha_Phi = 0;
volatile float SLBL_System::Alpha_Phi_init = 0;
volatile float SLBL_System::Beta_Phi = 0;
volatile float SLBL_System::Beta_Phi_init = 0;

volatile float SLBL_System::Target_Omega = -2000;//2 * M_PI * 11 * 10;
volatile float SLBL_System::Elec_Omega = 2 * M_PI * 11; //pole num = 11
volatile float SLBL_System::Est_Omega = 0;
volatile float SLBL_System::Est_Omega_Before = 0;
volatile float SLBL_System::Est_Omega_Delta = 0;
volatile float SLBL_System::Est_Omega_Delta_Before = 0;



volatile float SLBL_System::Elec_Theta_Delta = 0;
volatile float SLBL_System::Elec_Theta = 0;

volatile float SLBL_System::Est_Theta = 0;
volatile float SLBL_System::Est_Theta_Delta = 0;
volatile float SLBL_System::Est_Theta_Delta_Sum = 0;
volatile float SLBL_System::Est_Theta_Before = 0;

volatile float SLBL_System::Alpha_COS = 0;
volatile float SLBL_System::Beta_SIN = 0;

volatile float SLBL_System::U_COS = 0;
volatile float SLBL_System::V_COS = 0;
volatile float SLBL_System::W_COS = 0;

volatile float SLBL_System::U_SIN = 0;
volatile float SLBL_System::V_SIN = 0;
volatile float SLBL_System::W_SIN = 0;

volatile float SLBL_System::Volt_U = 0;
volatile float SLBL_System::Volt_V = 0;
volatile float SLBL_System::Volt_W = 0;

volatile float SLBL_System::Volt_U_Before = 0;
volatile float SLBL_System::Volt_V_Before = 0;
volatile float SLBL_System::Volt_W_Before = 0;

volatile float SLBL_System::Alpha_Volt = 0;
volatile float SLBL_System::Alpha_Volt_Before = 0;
volatile float SLBL_System::Beta_Volt = 0;
volatile float SLBL_System::Beta_Volt_Before = 0;

volatile float SLBL_System::Gamma_Volt = 0;
volatile float SLBL_System::Gamma_Volt_Before = 0;
volatile float SLBL_System::Gamma_Volt_Est = 0;
volatile float SLBL_System::Delta_Volt = 0;
volatile float SLBL_System::Delta_Volt_Before = 0;
volatile float SLBL_System::Delta_Volt_Est = 0;
volatile float SLBL_System::Delta_Volt_Tar = 0;

volatile float SLBL_System::Alpha_BEMF = 0;
volatile float SLBL_System::Alpha_BEMF_SUM = 0;
volatile float SLBL_System::Beta_BEMF = 0;
volatile float SLBL_System::Beta_BEMF_SUM = 0;
volatile float SLBL_System::BEMF_Est = 0;
volatile float SLBL_System::BEMF_Est_Before = 0;

volatile float SLBL_System::Est_Alpha_SIN = 0;
volatile float SLBL_System::Est_Beta_COS = 0;

volatile float SLBL_System::Max_Duty = 300;
volatile float SLBL_System::PWM_Res = 1000;
volatile float SLBL_System::V_F_Const = 0;

volatile float SLBL_System::Debug_Data = 0;
volatile float SLBL_System::Debug_Data2 = 0;

volatile bool SLBL_System::IPD_Start_Flag = false;
volatile bool SLBL_System::IPD_Flag = false;