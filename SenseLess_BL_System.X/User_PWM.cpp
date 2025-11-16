#include "User_PWM.hpp"

User_PWM::User_PWM(float supply_voltage){
    this->Supply_Voltage = supply_voltage;
    MCPWM_CallbackRegister(MCPWM_CH_3,SLBL_System::MCPWM3_Match_Handler,NULL);
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

void User_PWM::MCPWM3_Match_Handler(MCPWM_CH_STATUS status, uintptr_t context){
    int mode = Default_Mode;
    
    switch(mode){
        case Default_Mode:
            MCPWM_ChannelPrimaryDutySet(MCPWM_CH_3,0); //w
            MCPWM_ChannelPrimaryDutySet(MCPWM_CH_5,0); //v
            MCPWM_ChannelPrimaryDutySet(MCPWM_CH_6,0); //u
            break;
        
        case OpenLoop_Mode:
            break;
    }

}