/* 
 * File:   SLBL_System.hpp
 * Author: 0_hayate
 *
 * Created on January 25, 2025, 4:23 PM
 */

#ifndef SLBL_SYSTEM_HPP
#define	SLBL_SYSTEM_HPP

#include <float.h>
#include "definitions.h"


#include "Use_GPIO.hpp"
#include "Use_TMR1.hpp"
#include "Use_UART1.hpp"

#include "SLBL_IPD.hpp"
#include "Use_ADC.hpp"
#include "PID.hpp"

typedef enum{
    Default_Mode,
    OpenLoop_Mode,
    Vector_Mode,
    DTC_Mode
}Control_Mode;

class SLBL_System{
private:
    
    Use_TMR1 use_tmr1;
    
    Use_GPIO use_gpio;
    
    static volatile uint8_t Control_Mode;
    
    static volatile float Supply_Volt;
    
    static volatile uint16_t ADC_Buf;
    static volatile float ADC_to_Current_C;
    static volatile uint16_t ADC0_Quiescent;
    static volatile uint16_t ADC2_Quiescent;
    
    static volatile float U_FB_Curent;
    static volatile float V_FB_Curent;
    static volatile float W_FB_Curent;
    
    static volatile float Abs_Current;
    static volatile float Max_Current;
    
    static volatile float Alpha_Current;
    static volatile float Alpha_Current_Before;
    static volatile float Alpha_Current_Delta;
    static volatile float Alpha_Current_Delta_Before;
    static volatile float Alpha_Current_Tar;
    
    static volatile float Beta_Current;
    static volatile float Beta_Current_Before;
    static volatile float Beta_Current_Delta;
    static volatile float Beta_Current_Delta_Before;
    static volatile float Beta_Current_Tar;
    
    static volatile float Gamma_Current;
    static volatile float Gamma_Current_Before;
    static volatile float Gamma_Current_Delta;
    static volatile float Gamma_Current_Est;
    
    static volatile float Delta_Current;
    static volatile float Delta_Current_Before;
    static volatile float Delta_Current_Delta;
    static volatile float Delta_Current_Est;
    
    static volatile float Gamma_Current_Tar;
    
    
    
    static volatile float Motor_Kv;
    static volatile float Motor_Pole; //number of pole pairs
    static volatile float Motor_R; //internal resistans
    static volatile float Motor_L;
    static volatile float Motor_Ld;
    static volatile float Motor_Lq;
    static volatile float Motor_Ldq_delta;
    
    static volatile float Motor_Phi; //Number of flux linkage
    
    static volatile float Alpha_Phi;
    static volatile float Alpha_Phi_init;
    static volatile float Beta_Phi;
    static volatile float Beta_Phi_init;
    
    static volatile float Target_Omega;
    static volatile float Elec_Omega;
    static volatile float Est_Omega;
    static volatile float Est_Omega_Before;
    static volatile float Est_Omega_Delta;
    static volatile float Est_Omega_Delta_Before;
    
    static volatile float Elec_Theta_Delta;
    static volatile float Elec_Theta;
    
    static volatile float Est_Theta;
    static volatile float Est_Theta_Delta;
    static volatile float Est_Theta_Delta_Sum; //Number of 10 times
    static volatile float Est_Theta_Before;
    
    static volatile float Alpha_COS;
    static volatile float Beta_SIN;
    
    static volatile float U_COS;
    static volatile float V_COS;
    static volatile float W_COS;
    static volatile float U_SIN;
    static volatile float V_SIN;
    static volatile float W_SIN;
    
    static volatile float Est_Alpha_SIN;
    static volatile float Est_Beta_COS;
    
    static volatile float PWM_Res; //PWM_Resolution
    static volatile float Max_Duty;
    static volatile float V_F_Const; //"V/F Const Contorol" const value
    
    static volatile float Volt_U;
    static volatile float Volt_V;
    static volatile float Volt_W;
    
    static volatile float Volt_U_Before;
    static volatile float Volt_V_Before;
    static volatile float Volt_W_Before;
    
    static volatile float Alpha_Volt;
    static volatile float Alpha_Volt_Before;
    static volatile float Beta_Volt;
    static volatile float Beta_Volt_Before;
    
    static volatile float Gamma_Volt;
    static volatile float Gamma_Volt_Before;
    static volatile float Delta_Volt;
    static volatile float Delta_Volt_Before;
    static volatile float Delta_Volt_Tar;
    
    static volatile float Gamma_Volt_Est;
    static volatile float Delta_Volt_Est;
    
    static volatile float Alpha_BEMF;
    static volatile float Alpha_BEMF_SUM;
    static volatile float Beta_BEMF;
    static volatile float Beta_BEMF_SUM;
    static volatile float BEMF_Est;
    static volatile float BEMF_Est_Before;
    
    static volatile float Debug_Data;
    static volatile float Debug_Data2;
    
    uint16_t ADC_Ofset;
    
    static volatile bool IPD_Start_Flag;
    static volatile bool IPD_Flag;
    float IPD_Stat;
    
public:
    
    SLBL_System();
    
    static void Mode_Set(uint8_t mode);
    
    static void Current_UVWtoAlpha_Beta();
    
    void Go_IPD();
    
    static void IPD_Start_Flag_Set();
    bool IPD_Start();
    
    static void Max_Duty_Set(float duty);
    
    bool OpenLoop_Control();
    static void Target_Omega_Set(float omega);
    
    void System_Control();
    
    static void MCPWM3_Match_Handler(MCPWM_CH_STATUS status, uintptr_t context);
    
    static float Est_Omega_Get();
    
    static float Data_Get();
    static float Data2_Get();
    
    
    
};



#endif	/* SLBL_SYSTEM_HPP */

