
#include "Use_ADC.hpp"

Use_ADC::Use_ADC(float ADC_Ref_Volt,float Current_Sensitivity){
    //Current_Sensitivity = mV/A
    this->ADC_to_Current_C = 1000*ADC_Ref_Volt/(Current_Sensitivity*ADC_Resolution); //ADC変換結果と積算すると電流に変換される定数
    
    ADCHS_Comparator1Disable();
    
};

Use_ADC::~Use_ADC(){

};

float Use_ADC::Get_ADC_to_Current_C(){
    return this->ADC_to_Current_C;
}

uint16_t Use_ADC::Get_ADC0_Quiescent(){
    return this->ADC0_Quiescent;
}

uint16_t Use_ADC::Get_ADC2_Quiescent(){
    return this->ADC2_Quiescent;
}

bool Use_ADC::ADC_Calibration(){
    uint32_t adc0_buf = 0;
    uint32_t adc2_buf = 0;
    
    ADCCON3bits.TRGSUSP = 1; //変換を停止
    
    while(!ADCCON3bits.UPDRDY); //すべての変換が停止していることを確認
    
    ADCTRG1 = 0x20002U; //グローバルソフトウェアレベルトリガを設定
    ADCTRGSNSbits.LVL0 = 1; //トリガHiで常にトリガがかかるように設定
    ADCTRGSNSbits.LVL2 = 1;
    
    ADCCON3bits.TRGSUSP = 0; //変換を再開
    
    ADCCON3bits.GLSWTRG = 1; //グローバルソフトウェアレベルトリガを発行
    
    for(uint8_t i = 0; i < 100; i++){
        
        while((ADCDSTAT1&5) != 5);
        adc0_buf += ADCDATA0;
        adc2_buf += ADCDATA2;
    }
    
    ADCCON3bits.GLSWTRG = 0;
    
    ADCCON3bits.TRGSUSP = 1;
    
    while(!ADCCON3bits.UPDRDY);
    
    ADCTRG1 = 0xC000CU;
    ADCTRGSNSbits.LVL0 = 0;
    ADCTRGSNSbits.LVL2 = 0;
    
    ADCCON3bits.TRGSUSP = 0;
    
    this->ADC0_Quiescent = adc0_buf/100;
    this->ADC2_Quiescent = adc2_buf/100;
    
    return true;
}

