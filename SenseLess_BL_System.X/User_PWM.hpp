/* 
 * File:   User_PWM.hpp
 * Author: 0_hayate
 *
 * Created on 2025/05/11, 13:39
 */

#ifndef USER_PWM_HPP
#define	USER_PWM_HPP

#include "definitions.h"
#include "User_Math.hpp"
#include "Mode_Transition.hpp"
#include "SLBL_System.hpp"

class User_PWM{
private:
public:
    User_PWM(float supply_voltage);
    ~User_PWM();
    
     float Supply_Voltage;
    
    void U_Voltage_Duty(float alpha_voltage);
    void V_Voltage_Duty(float alpha_voltage,float beta_voltage);
    void W_Voltage_Duty(float alpha_voltage,float beta_voltage);
    
    static void MCPWM3_Match_Handler(MCPWM_CH_STATUS status, uintptr_t context);
};

#endif	/* USER_PWM_HPP */

