#include "SLBL_IPD.hpp"
#include <cstdio>

SLBL_IPD::SLBL_IPD(uint16_t Low_threshold,uint16_t High_threshold){
    this->IPD_Time = 6000;
    this->IPD_Count = this->IPD_Time;
    this->IPD_Stat = 0;
    this->IPD_Flag = false;

    ADCHS_Comparator1LimitSet(Low_threshold,High_threshold);
    ADCHS_Comparator1Enable();
    ADCHS_Comparator1CallbackRegister(this->ADC_Comp1_Handler,(uintptr_t)this);

}

SLBL_IPD::~SLBL_IPD(){
    ADCHS_Comparator1Disable();
    this->ADC_Reset();
    ADCHS_Comparator1CallbackRegister(NULL,NULL);
}

void SLBL_IPD::ADC_IPD_Mode(){

    ADCCON3bits.TRGSUSP = 1;

    while(!ADCCON3bits.UPDRDY);

    ADCTRGSNSbits.LVL0 = 1; //トリガHiで常にトリガがかかるように設定
    ADCTRGSNSbits.LVL2 = 1;

    ADC0TIMEbits.SAMC = 5; //変換レート1kHz
    ADC2TIMEbits.SAMC = 5;

    ADCTRG1 = 0x20002U; //トリガソースをグローバルソフトウェアレベルトリガに設定

    ADCCON3bits.TRGSUSP = 0;
}

void SLBL_IPD::ADC_Reset(){
    ADCCON3bits.TRGSUSP = 1;

    while(!ADCCON3bits.UPDRDY);

    ADC0TIMEbits.SAMC = 50; //変換レート1kHz
    ADC2TIMEbits.SAMC = 50;

    ADCTRGSNSbits.LVL0 = 0;
    ADCTRGSNSbits.LVL2 = 0;

    ADCTRG1 = 0xC000CU;

    ADCCON3bits.TRGSUSP = 0;
}

void SLBL_IPD::ADC_Comp1_Handler(ADCHS_CHANNEL_NUM channel, uintptr_t context){

    if(context == NULL){
        return;
    }

    SLBL_IPD *_ipd = (SLBL_IPD*)context;

    TMR2_Stop();

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    _ipd->IPD_Flag = true;

}

float SLBL_IPD::W_V_IPD(){

    /////////////////////////////////////////////////////
    //W->V
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b10;
    IOCON5bits.OVRDAT = 0b01;
    IOCON6bits.OVRDAT = 0b00;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = W_V;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return W_V;
}

float SLBL_IPD::W_U_IPD(){

    /////////////////////////////////////////////////////
    //W->U
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b10;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b01;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = W_U;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return W_U;
}

float SLBL_IPD::V_U_IPD(){
        /////////////////////////////////////////////////////
    //V->U
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b10;
    IOCON6bits.OVRDAT = 0b01;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = V_U;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return V_U;
}

float SLBL_IPD::V_W_IPD(){
        /////////////////////////////////////////////////////
    //V->W
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b01;
    IOCON5bits.OVRDAT = 0b10;
    IOCON6bits.OVRDAT = 0b00;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = V_W;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return V_W;
}

float SLBL_IPD::U_V_IPD(){
        /////////////////////////////////////////////////////
    //U->V
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b01;
    IOCON6bits.OVRDAT = 0b10;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = U_V;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return U_V;

}

float SLBL_IPD::U_W_IPD(){
        /////////////////////////////////////////////////////
    //U->W
    IPD_Flag = false;
    TMR2 = 0;
    TMR2_Start();

    IOCON3bits.OVRDAT = 0b01;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b10;

    ADCCON3bits.GLSWTRG = 1;
    while(!IPD_Flag && TMR2<IPD_Time);
    ADCCON3bits.GLSWTRG = 0;

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    if(this->IPD_Count >= TMR2_CounterGet()){
        this->IPD_Count = TMR2_CounterGet();
        IPD_Stat = U_W;
    }

    TMR2 = 0;
    TMR2_Start();
    while(TMR2<6000);
    TMR2_Stop();

    return U_W;

}

float SLBL_IPD::IPD_Start(){

    uint8_t write_buf[32] = {};

    MCPWM_Stop();
    PWMCON3bits.PWMLIEN = false; //PWM Interrupt disable

    this->ADC_IPD_Mode();

    MCPWM_Start();

    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;

    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_3);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_5);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_6);

    //main ipd process
    this->U_V_IPD();
    this->U_W_IPD();
    this->V_U_IPD();
    this->V_W_IPD();
    this->W_U_IPD();
    this->W_V_IPD();


    sprintf((char*)write_buf,"IPD_Stat=%lf\n",IPD_Stat);
    UART1_Write((uint8_t*)write_buf,strlen((char*)write_buf));
    memset((void*)write_buf,NULL,sizeof(write_buf));


    MCPWM_ChannelPinsOverrideDisable(MCPWM_CH_3);
    MCPWM_ChannelPinsOverrideDisable(MCPWM_CH_5);
    MCPWM_ChannelPinsOverrideDisable(MCPWM_CH_6);

    MCPWM_Stop();
    PWMCON3bits.PWMLIEN = true; //PWM Interrupt enable
    MCPWM_Start();

    return this->IPD_Stat;
}