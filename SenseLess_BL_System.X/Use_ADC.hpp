/* 
 * File:   Use_ADC.hpp
 * Author: 0_hayate
 *
 * Created on 2025/05/07, 19:18
 */

#ifndef USE_ADC_HPP
#define	USE_ADC_HPP

#include "definitions.h"
#include "Use_UART1.hpp"

#define ADC_Resolution 4095

class Use_ADC{
private:
    uint16_t ADC_Ofset;
    float ADC_to_Current_C;
    uint16_t ADC0_Quiescent;
    uint16_t ADC2_Quiescent;
    
public:
    Use_ADC(float ADC_Ref_Volt,float Current_Sensitivity);
    ~Use_ADC();
    
    bool ADC_Calibration();
    
    uint16_t Get_ADC0_Quiescent();
    uint16_t Get_ADC2_Quiescent();
    float Get_ADC_to_Current_C();
    
};


#endif	/* USE_ADC_HPP */

