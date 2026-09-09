#include "SLBL_OpenLoop.hpp"

SLBL_OpenLoop::SLBL_OpenLoop(float Supply_Voltage):User_PWM(12){
    this->Supply_Voltage = Supply_Voltage;
}

void SLBL_OpenLoop::SLBL_OpenLoop_Control(){
    float Alpha_COS;
    float Beta_SIN;
    float temp;


    Alpha_COS = this->Supply_Voltage * cosf(this->Target_Theta);
    Beta_SIN = this->Supply_Voltage * sinf(this->Target_Theta);

    temp = this->Target_Omega/Control_Freq;
    this->Target_Theta = this->angle_nomal.Angle_Add(temp);

}