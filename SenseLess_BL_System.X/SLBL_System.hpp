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
#include "User_PWM.hpp"

#include "SLBL_IPD.hpp"
#include "Use_ADC.hpp"
#include "PID.hpp"
#include "SLBL_Motor.hpp"

#include "Angle_Normalization.hpp"
#include "Sensorless_FOC.hpp"

typedef enum{
    Default_Mode,
    OpenLoop_Mode,
    Vector_Mode,
    DTC_Mode
}Control_Mode;

typedef struct{
    float Angle;
    float Tar_Angle;
}Motor_Position;

typedef struct{
    float u_current;
    float v_current;
    float w_current;
    float alpha_current;
    float beta_current;
}Motor_Current;

class SLBL_System{
private:
    
    Angle_Normalization angle_norm;
    User_PWM user_pwm{sensorless_foc::SupplyVoltage};
    sensorless_foc::Controller vector_controller;
    void Update_Observer();
    void Stop_Vector_Output();
    
    static volatile Control_Mode Mode;
    
    Motor_Position motor_pos;
    
    Motor_Param M_V2806;
    
    Motor_Current measure_current;
    Motor_Current estimate_current;
    
    static volatile float Supply_Volt;
    
    static volatile uint16_t ADC_Buf;
    static volatile float ADC_to_Current_C;
    static volatile uint16_t ADC0_Quiescent;
    static volatile uint16_t ADC2_Quiescent;
    
    static volatile float Abs_Current;
    static volatile float Max_Current;

    static volatile float PWM_Res; //PWM_Resolution
    static volatile float Max_Duty;
    
    static volatile float Debug_Data;
    static volatile float Debug_Data2;
    static volatile float Debug_Bemf_Amplitude;
    static volatile float Debug_Current_Error;
    
public:
    
    float err_alpha_current;
    float err_beta_current;
    
    SLBL_System();
    
    static void Mode_Set(Control_Mode mode);
    
    void Current_UVWtoAlpha_Beta();
    
    void Go_IPD();
    
    void Open_Loop();
    void Vector_Control();
    static volatile float FOC_Speed_Hz;
    static volatile float FOC_Target_Hz;
    static volatile float FOC_Id;
    static volatile float FOC_Iq;
    static volatile float FOC_Iq_Ref;
    static volatile float FOC_Voltage;
    static volatile float FOC_Sample_Hz;
    static volatile float FOC_Phase_Error;
    static volatile float FOC_Startup_Phase_Error;
    static volatile uint32_t FOC_Start_Tick;
    static volatile uint32_t FOC_Elapsed_Ms;
    static volatile uint32_t FOC_Target_Time_Ms;
    static volatile uint32_t FOC_ClosedLoop_Time_Ms;
    static volatile uint8_t FOC_State;
    static volatile uint8_t FOC_Fault;
    
    static float Data_Get();
    static float Data2_Get();
    static float Bemf_Amplitude_Get();
    static float Current_Error_Get();
    
    
};



#endif	/* SLBL_SYSTEM_HPP */

