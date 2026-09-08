#include "Angle_Normalization.hpp"


Angle_Normalization::Angle_Normalization(){
    Angle_Before = 0;
}

void Angle_Normalization::Set_Angle_Before(float angle_before){
    this->Angle_Before = angle_before;
}

float Angle_Normalization::Angle_Diff(float Angle){
    float temp;
    temp = Angle - this->Angle_Before;
    this->Angle_Before = Angle;
                
    if(temp >= 0 && temp >= M_PI){ //負の速度域でゼロクロスするとき
        temp = temp - _2M_PI;
    }else if(temp <= 0 && temp <= -M_PI){//正の速度域でゼロクロスするとき　
        temp = temp + _2M_PI;
    }
    return temp;
        
}

float Angle_Normalization::Angle_Add(float Angle_Delta){
    float temp;
    temp = this->Angle_Before + Angle_Delta;
    
    if(temp < 0){
        temp += _2M_PI;
    }else if(temp > _2M_PI){
        temp -= _2M_PI;
    }
    
    this->Angle_Before = temp;
    
    return temp;
}
