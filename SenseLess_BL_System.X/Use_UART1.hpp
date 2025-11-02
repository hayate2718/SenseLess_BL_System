/* 
 * File:   Use_UART1.hpp
 * Author: 0_hayate
 *
 * Created on January 21, 2025, 9:46 PM
 */

#ifndef USE_UART1_HPP
#define	USE_UART1_HPP

#include "definitions.h"

class Use_UART1{
private:
    
    static uint8_t User_RX_Buf[128];
    static uint8_t Read_Before_Data[32];
    static uint8_t Read_Str_Cnt;
    
    static uint8_t User_TX_Buf[128];
    
public:
    
    Use_UART1();
    
    static bool Read_Assign();
    
    static bool Data_Assign(uint8_t* data);
    
    static bool Int_Write(const int32_t data);
    
   
    

};

#endif	/* USE_UART1_HPP */

