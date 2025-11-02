#include "Use_GPIO.hpp"
#include "Use_UART1.hpp"


Use_GPIO::Use_GPIO() {
    
    GPIO_PinInterruptCallbackRegister(GPIO_PIN_RD8,Use_GPIO::Use_GPIO_RD8_Callback,NULL);
    GPIO_PinIntEnable(GPIO_PIN_RD8,GPIO_INTERRUPT_ON_RISING_EDGE);
    
}

void Use_GPIO::Use_GPIO_RD8_Callback(GPIO_PIN pin, uintptr_t context){
    
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_3);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_5);
    MCPWM_ChannelPinsOverrideEnable(MCPWM_CH_6);
    
    IOCON3bits.OVRDAT = 0b00;
    IOCON5bits.OVRDAT = 0b00;
    IOCON6bits.OVRDAT = 0b00;
    
    uint8_t buf[10] = "MD_Fault\n";
    UART1_Write((uint8_t*)buf,sizeof(buf));
    
    return;
}