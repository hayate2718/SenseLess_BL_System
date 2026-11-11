#include "User_PWM.hpp"
#include "Sensorless_FOC.hpp"

volatile uint8_t match_flag = 0;
volatile uint32_t pwm_tick = 0;

User_PWM::User_PWM(float supply_voltage){
    this->Supply_Voltage = supply_voltage;
    this->alpha_v = 0.0f;
    this->beta_v = 0.0f;
    
    match_flag = 0;
    MCPWM_CallbackRegister(MCPWM_CH_3,MCPWM3_Match_Handler,0);
}

User_PWM::~User_PWM(){
    
}

void User_PWM::U_Voltage_Duty(float alpha_voltage){
  
    MCPWM_ChannelPrimaryDutySet(MCPWM_CH_6,(uint16_t)((float)((alpha_voltage) * (1000 / this->Supply_Voltage)) + 1000)); //u
    
}

void User_PWM::V_Voltage_Duty(float alpha_voltage, float beta_voltage){

    MCPWM_ChannelPrimaryDutySet(MCPWM_CH_5,(uint16_t)((float)((-alpha_voltage *(0.5) + beta_voltage * (SQRT_3_2))* 1000 / this->Supply_Voltage) + 1000)); //v

}

void User_PWM::W_Voltage_Duty(float alpha_voltage, float beta_voltage){
  
    MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3,(uint16_t)((float)((-alpha_voltage *(0.5) + beta_voltage * (-SQRT_3_2)) * 1000 / this->Supply_Voltage) + 1000)); //w
    
}

void User_PWM::Vector_Voltage_Duty(float angle, float volt){
    
    this->alpha_v = volt * cosf(angle);
    this->beta_v = volt * sinf(angle);
    
    this->U_Voltage_Duty(this->alpha_v);
    this->V_Voltage_Duty(this->alpha_v,this->beta_v);
    this->W_Voltage_Duty(this->alpha_v,this->beta_v);

}

void User_PWM::Alpha_Beta_Voltage_Duty(float alpha_voltage, float beta_voltage){
    const float magnitude = sqrtf(alpha_voltage * alpha_voltage + beta_voltage * beta_voltage);
    const float limit = sensorless_foc::ModulationLimit * this->Supply_Voltage;
    const float scale = magnitude > limit ? limit / magnitude : 1.0f;
    this->alpha_v = alpha_voltage * scale;
    this->beta_v = beta_voltage * scale;
    this->U_Voltage_Duty(this->alpha_v);
    this->V_Voltage_Duty(this->alpha_v, this->beta_v);
    this->W_Voltage_Duty(this->alpha_v, this->beta_v);
}

void MCPWM3_Match_Handler(MCPWM_CH_STATUS status, uintptr_t context){

    ++pwm_tick;
    match_flag = 1;
}
