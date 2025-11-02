/* 
 * File:   Angle_Normalization.hpp
 * Author: 0_hayate
 *
 * Created on 2025/05/10, 11:46
 */

#ifndef ANGLE_NORMALIZATION_HPP
#define	ANGLE_NORMALIZATION_HPP

#include <cmath>
#include <float.h>
#include "User_Math.hpp"

class Angle_Normalization{
private:
    
    float Angle_Before;
    
public:
    Angle_Normalization();
    ~Angle_Normalization();
    
    void Set_Angle_Before(float angle_before);
    
    float Angle_Diff(float Angle);
    float Angle_Add(float Angle_Delta);
    
};


#endif	/* ANGLE_NORMALIZATION_HPP */

