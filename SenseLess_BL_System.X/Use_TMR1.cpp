#include <stdio.h>
#include "SLBL_System.hpp"
#include "Use_TMR1.hpp"

Use_TMR1::Use_TMR1():cycle_cnt(0),tmr_cnt(0){
    TMR1_CallbackRegister(this->Use_TMR1_Callback,NULL);
    TMR1_Start();
}

void Use_TMR1::Use_TMR1_Callback(uint32_t status, uintptr_t context){
    const float est_angle = SLBL_System::Data2_Get();
    const float cmd_angle = SLBL_System::Data_Get();
    const float bemf_amplitude = SLBL_System::Bemf_Amplitude_Get();
    const float current_error = SLBL_System::Current_Error_Get();
    const float angle_error = remainderf(cmd_angle - est_angle, _2M_PI);
    char angle_log[96];
    const int length = snprintf(angle_log, sizeof(angle_log),
        "est=%.4f,cmd=%.4f,diff=%.4f,emag=%.4f,ierr=%.4f\n",
        est_angle, cmd_angle, angle_error, bemf_amplitude, current_error);
    if(length > 0 && length < (int)sizeof(angle_log)){
        UART1_Write((uint8_t*)angle_log, (size_t)length);
    }
}