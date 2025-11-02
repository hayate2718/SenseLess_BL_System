#include "Mode_Transition.hpp"

Mode_Control::Mode_Control(){

    this->current_handler = NULL;

}

void Mode_Control::Set_Handler(Mode_Handler* Mode_Ptr){

    this->current_handler = Mode_Ptr;

}

void Mode_Control::Run_Handler(){
    
    if(this->current_handler){
        this->current_handler->Handler();
    }
}

