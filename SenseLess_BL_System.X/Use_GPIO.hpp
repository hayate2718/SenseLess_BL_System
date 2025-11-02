/* 
 * File:   Use_GPIO.hpp
 * Author: 0_hayate
 *
 * Created on January 25, 2025, 11:21 AM
 */

#ifndef USE_GPIO_HPP
#define	USE_GPIO_HPP

#include "definitions.h"
#include "Use_UART1.hpp"


class Use_GPIO{
private:
public:
    
    Use_GPIO();
    
    static void Use_GPIO_RD8_Callback( GPIO_PIN pin, uintptr_t context);
    
};


#endif	/* USE_GPIO_HPP */

