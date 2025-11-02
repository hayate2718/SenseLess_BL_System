/* 
 * File:   SLBL_OpenLoop.hpp
 * Author: 0_hayate
 *
 * Created on May 1, 2025, 8:57 PM
 */

#ifndef SLBL_OPENLOOP_HPP
#define	SLBL_OPENLOOP_HPP

#include <float.h>
#include "definitions.h"


#include "Use_GPIO.hpp"
#include "Use_TMR1.hpp"
#include "Use_UART1.hpp"
#include "User_PWM.hpp"
#include "Use_ADC.hpp"

#include "SLBL_IPD.hpp"

#include "PID.hpp"
#include "User_Math.hpp"
#include "Angle_Normalization.hpp"

class SLBL_OpenLoop: public User_PWM {
private :
    
    float Supply_Voltage;
    
    float Target_Omega;
    float Ref_Omega;
    float FB_Omega;
    
    float Target_Theta;
    float Ref_Theta;
    float FB_Theta;
    
    float Alpha_Volt_Before;
    float Beta_Volt_Before;
    
    Angle_Normalization angle_nomal;

public:
    
    SLBL_OpenLoop(float Supply_Voltage);
    ~SLBL_OpenLoop();
    
    void SLBL_OpenLoop_Control();

    
};




#endif	/* SLBL_OPENLOOP_HPP */

