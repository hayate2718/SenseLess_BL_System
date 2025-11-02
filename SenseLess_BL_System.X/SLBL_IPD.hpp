/* 
 * File:   SLBL_IPD.hpp
 * Author: 0_hayate
 *
 * Created on May 1, 2025, 8:47 PM
 */

#ifndef SLBL_IPD_HPP
#define	SLBL_IPD_HPP

#include <float.h>
#include "definitions.h"

#define U_W 0.5235987756f //30deg
#define V_W 1.570796327f //90deg
#define V_U 2.617993878f//150deg
#define W_U 3.665191429f //210deg
#define W_V 4.71238898f //270deg
#define U_V 5.759586532f //330deg


    /*
     * MCPWM_CH_3 = (C=W)
     * MCPWM_CH_5 = (B=V)
     * MCPWM_CH_6 = (A=U)
     * 
     * ADCHS_CH0 W_Current
     * ADCHS_CH2 U_Current
    */

//initial position detect
//ロータ初期位置検出
class SLBL_IPD{
private:
    
    //volatile bool IPD_Start_Flag;
    volatile bool IPD_Flag;
    float IPD_Stat;
    uint32_t IPD_Time;
    
    uint32_t IPD_Count;
    
    void ADC_IPD_Mode(); //ADCをIPDに設定する
    void ADC_Reset(); //ADCをもとに戻す
    
    static void ADC_Comp1_Handler(ADCHS_CHANNEL_NUM channel, uintptr_t context);
    
    float U_W_IPD();
    float V_W_IPD();
    float V_U_IPD();
    float W_U_IPD();
    float W_V_IPD();
    float U_V_IPD();
    
public:
    
    SLBL_IPD(uint16_t Low_threshold,uint16_t High_threshold);
    ~SLBL_IPD();
    
    float IPD_Start();
    
};


#endif	/* SLBL_IPD_HPP */

