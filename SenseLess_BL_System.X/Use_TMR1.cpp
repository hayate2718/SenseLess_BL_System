#include <stdio.h>

#include "SLBL_System.hpp"

#include "Use_TMR1.hpp"





Use_TMR1::Use_TMR1():cycle_cnt(0),tmr_cnt(0){
    
    //interrupt handller set
    TMR1_CallbackRegister(this->Use_TMR1_Callback,NULL);
    
    //control period start
    TMR1_Start();

}



void Use_TMR1::Use_TMR1_Callback(uint32_t status, uintptr_t context){
    
    //PORTBbits.RB5 ^= 1;
    uint8_t txbuf[32] = {};
    float buf;
    
    Use_UART1::Read_Assign();
    
    buf = SLBL_System::Data_Get();
    
    sprintf((char*)txbuf,"est=%f\n",buf);
    UART1_Write(txbuf,strlen((char*)txbuf));
    
    buf = SLBL_System::Data2_Get();
    
    sprintf((char*)txbuf,"or=%f\n",buf);
    UART1_Write(txbuf,strlen((char*)txbuf));
  
    
}