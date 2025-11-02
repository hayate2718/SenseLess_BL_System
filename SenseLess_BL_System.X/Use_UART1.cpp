#include "Use_UART1.hpp"
#include "SLBL_System.hpp"

#include <stdio.h>
#include <stdlib.h>

Use_UART1::Use_UART1(){
    return;
}

//static member init
uint8_t Use_UART1::Read_Str_Cnt = 0;
uint8_t Use_UART1::Read_Before_Data[32] = {};
uint8_t Use_UART1::User_RX_Buf[128] = {};
uint8_t Use_UART1::User_TX_Buf[128] = {};

bool Use_UART1::Read_Assign(){
    
    uint8_t ReadCount = UART1_ReadCountGet();
    
    if(sizeof(Use_UART1::User_RX_Buf) >= ReadCount){
        UART1_Read(Use_UART1::User_RX_Buf,ReadCount);
        
    }else{
        return false; //user buf over
        
    }
    
    for(uint8_t i = 0; i < strlen((char*)Use_UART1::User_RX_Buf);i++){
        
        Use_UART1::Read_Before_Data[Use_UART1::Read_Str_Cnt] = Use_UART1::User_RX_Buf[i];
        Use_UART1::Read_Str_Cnt++;
        
        if(Use_UART1::User_RX_Buf[i] == '\n'){
            
            Data_Assign((uint8_t*)Use_UART1::Read_Before_Data);
            Use_UART1::Read_Str_Cnt = 0;
            
            memset((void*)Use_UART1::Read_Before_Data,NULL,sizeof(Use_UART1::Read_Before_Data));
        }
    }
    
    memset((void*)Use_UART1::User_RX_Buf,NULL,sizeof(Use_UART1::User_RX_Buf));
    
    return true;
}

bool Use_UART1::Data_Assign(uint8_t* data){
    
    if(strncmp("help\n",(char*)data,5)==0){
        sprintf((char*)Use_UART1::User_TX_Buf,"HELP_CMDLIST\nIPD_START=InitialPositionDetect_Start\n");
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        
    }else if(strncmp("IPD_START\n",(char*)data,10)==0){
        sprintf((char*)Use_UART1::User_TX_Buf,"IPD_START!!\n");
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        SLBL_System::IPD_Start_Flag_Set();
        
    }else if(strncmp("OPEN_LOOP\n",(char*)data,10)==0){
        sprintf((char*)Use_UART1::User_TX_Buf,"OPEN_LOOP!!\n");
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        SLBL_System::Mode_Set(OpenLoop_Mode);
        
        
    }else if(strncmp("VECTOR\n",(char*)data,7)==0){
        sprintf((char*)Use_UART1::User_TX_Buf,"VECTOR_CONTROL!!\n");
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        SLBL_System::Mode_Set(Vector_Mode);
        
        
    }else if(strncmp("DTC\n",(char*)data,4)==0){
        sprintf((char*)Use_UART1::User_TX_Buf,"DTC_CONTROL!!\n");
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        SLBL_System::Mode_Set(DTC_Mode);
        
        
    }else if(strncmp("OMEGA_SET,",(char*)data,10)==0){
        char omega[32] = {};
        memcpy(omega,data+10,strlen((char*)data)-10);
        SLBL_System::Target_Omega_Set(atof(omega));
        sprintf((char*)Use_UART1::User_TX_Buf,"OMEGA_SET=%lf\n",atof(omega));
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        
        
    }else if(strncmp("DUTY_SET,",(char*)data,9)==0){
        char duty[32] = {};
        memcpy(duty,data+9,strlen((char*)data)-9);
        SLBL_System::Max_Duty_Set(atof(duty));
        sprintf((char*)Use_UART1::User_TX_Buf,"Duty=%lf\n",atof(duty));
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
        
        
    }else {
        sprintf((char*)Use_UART1::User_TX_Buf,"command not exist\n",(char*)data);
        UART1_Write(Use_UART1::User_TX_Buf,strlen((char*)Use_UART1::User_TX_Buf));
    }
    
    memset((void*)Use_UART1::User_TX_Buf,NULL,sizeof(Use_UART1::User_TX_Buf));
    
    return true;
}