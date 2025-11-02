/* 
 * File:   Use_TMR1.hpp
 * Author: 0_hayate
 *
 * Created on 2025/01/22, 21:12
 */

#ifndef USE_TMR1_HPP
#define	USE_TMR1_HPP

#include "definitions.h"
#include "Use_UART1.hpp"

class Use_TMR1{
private:
    volatile uint32_t cycle_cnt;
    volatile uint32_t tmr_cnt;
    
    
    
public:
    
    Use_TMR1(); 
    static void Use_TMR1_Callback(uint32_t status, uintptr_t context);
    
    
};







#endif	/* USE_TMR1_HPP */

