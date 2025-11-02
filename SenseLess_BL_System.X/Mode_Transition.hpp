/* 
 * File:   Mode_Transition.hpp
 * Author: 0_hayate
 *
 * Created on 2025/05/11, 20:55
 */

#ifndef MODE_TRANSITION_HPP
#define	MODE_TRANSITION_HPP

#include <xc.h>
#include <cstdlib>
#include <iostream>
#include <memory>

class Mode_Handler;
class Mode_Control;

class Mode_Control{
private:
    
    Mode_Handler * current_handler;
public:
    Mode_Control();
    ~Mode_Control();
    
    void Set_Handler(Mode_Handler * Mode_Ptr);
    void Run_Handler();
};

class Mode_Handler{
private:
    
public:
    virtual void Handler() = 0;
};

#endif	/* MODE_TRANSITION_HPP */

