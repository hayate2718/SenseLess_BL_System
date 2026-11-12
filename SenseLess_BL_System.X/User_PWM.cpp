#include "User_PWM.hpp"

volatile uint8_t match_flag = 0;

User_PWM::User_PWM(float supply_voltage){
    this->Supply_Voltage = supply_voltage;
    this->alpha_v = 0.0f;
    this->beta_v = 0.0f;
    
    match_flag = 0;
    MCPWM_CallbackRegister(MCPWM_CH_3,MCPWM3_Match_Handler,NULL);
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

void MCPWM3_Match_Handler(MCPWM_CH_STATUS status, uintptr_t context){

    match_flag = 1;
}
