/*******************************************************************************
  ADCHS Peripheral Library Interface Source File

  Company
    Microchip Technology Inc.

  File Name
    plib_adchs.c

  Summary
    ADCHS peripheral library source.

  Description
    This file implements the ADCHS peripheral library.

*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END
#include "device.h"
#include "plib_adchs.h"
#include "interrupts.h"

#define ADCHS_CHANNEL_32  (32U)

// *****************************************************************************
// *****************************************************************************
// Section: ADCHS Implementation
// *****************************************************************************
// *****************************************************************************



volatile static ADCHS_DC_CALLBACK_OBJECT ADCHS_DCCallbackObj[1];
void ADCHS_Initialize(void)
{
    ADCCON1bits.ON = 0;
    ADC0CFG = DEVADC0;
    ADC0TIME = 0x3030032U;
    ADC2CFG = DEVADC2;
    ADC2TIME = 0x3030032U;


    ADCCON1 = 0x602000U;
    ADCCON2 = 0x20001U;
    ADCCON3 = 0x0U;

    ADCTRGMODE = 0x0U;

    ADCTRG1 = 0xc000cU; 
    ADCTRG2 = 0x0U; 
    ADCTRG3 = 0x0U; 
    
    
    
    ADCTRG7 = 0x0U; 

    ADCTRGSNS = 0x0U;

    ADCIMCON1 = 0x0U;
    ADCIMCON2 = 0x0U; 
    ADCIMCON3 = 0x0U; 
    ADCIMCON4 = 0x0U; 

    /* Input scan */
    ADCCSS1 = 0x0U;
    ADCCSS2 = 0x0U; 


ADCCMPEN1 = 0x5U;
ADCCMP1 = 0x85207B2U;
ADCCMPCON1 = 0xC9U;



IEC2SET = _IEC2_AD1DC1IE_MASK;

    /* Turn ON ADC */
    ADCCON1bits.ON = 1;
    while(ADCCON2bits.BGVRRDY == 0U) // Wait until the reference voltage is ready
    {
        /* Nothing to do */
    }
    while(ADCCON2bits.REFFLT != 0U) // Wait if there is a fault with the reference voltage
    {
        /* Nothing to do */
    }

    /* ADC 0 */
    ADCANCONbits.ANEN0 = 1;      // Enable the clock to analog bias
    while(ADCANCONbits.WKRDY0 == 0U) // Wait until ADC is ready
    {
        /* Nothing to do */
    }
    ADCCON3bits.DIGEN0 = 1;      // Enable ADC

    /* ADC 2 */
    ADCANCONbits.ANEN2 = 1;      // Enable the clock to analog bias
    while(ADCANCONbits.WKRDY2 == 0U) // Wait until ADC is ready
    {
        /* Nothing to do */
    }
    ADCCON3bits.DIGEN2 = 1;      // Enable ADC



}


/* Enable ADCHS channels */
void ADCHS_ModulesEnable (ADCHS_MODULE_MASK moduleMask)
{
    ADCCON3 |= ((uint32_t)moduleMask << 16);
}

/* Disable ADCHS channels */
void ADCHS_ModulesDisable (ADCHS_MODULE_MASK moduleMask)
{
    ADCCON3 &= ~(((uint32_t)moduleMask << 16));
}


void ADCHS_ChannelResultInterruptEnable (ADCHS_CHANNEL_NUM channel)
{
    if (channel < ADCHS_CHANNEL_32)
    {
        ADCGIRQEN1 |= 0x01UL << channel;
    }
    else
    {
        ADCGIRQEN2 |= 0x01UL << (channel - 32U);
    }
}

void ADCHS_ChannelResultInterruptDisable (ADCHS_CHANNEL_NUM channel)
{
    if (channel < ADCHS_CHANNEL_32)
    {
        ADCGIRQEN1 &= ~(0x01UL << channel);
    }
    else
    {
        ADCGIRQEN2 &= ~(0x01UL << (channel - 32U));
    }
}

void ADCHS_ChannelEarlyInterruptEnable (ADCHS_CHANNEL_NUM channel)
{
    if (channel < ADCHS_CHANNEL_32)
    {
        ADCEIEN1 |= (0x01UL << channel);
    }
    else
    {
        ADCEIEN2 |= (0x01UL << (channel - 32U));
    }
}

void ADCHS_ChannelEarlyInterruptDisable (ADCHS_CHANNEL_NUM channel)
{
    if (channel < ADCHS_CHANNEL_32)
    {
        ADCEIEN1 &= ~(0x01UL << channel);
    }
    else
    {
        ADCEIEN2 &= ~(0x01UL << (channel - 32U));
    }
}

void ADCHS_GlobalEdgeConversionStart(void)
{
    ADCCON3bits.GSWTRG = 1;
}

void ADCHS_GlobalLevelConversionStart(void)
{
    ADCCON3bits.GLSWTRG = 1;
}

void ADCHS_GlobalLevelConversionStop(void)
{
    ADCCON3bits.GLSWTRG = 0;
}

void ADCHS_ChannelConversionStart(ADCHS_CHANNEL_NUM channel)
{
    ADCCON3bits.ADINSEL = (uint8_t)channel;
    ADCCON3bits.RQCNVRT = 1;
}


/*Check if conversion result is available */
bool ADCHS_ChannelResultIsReady(ADCHS_CHANNEL_NUM channel)
{
    bool status = false;
    if (channel < ADCHS_CHANNEL_32)
    {
        status = (((ADCDSTAT1 >> channel) & 0x01U) != 0U);
    }
    else
    {
        status = (((ADCDSTAT2 >> (channel - 32U)) & 0x01U) != 0U);
    }
    return status;
}

/* Read the conversion result */
uint16_t ADCHS_ChannelResultGet(ADCHS_CHANNEL_NUM channel)
{
    return (uint16_t)(*((&ADCDATA0) + (channel << 2)));

}



void ADCHS_Comparator1Enable(void)
{
    ADCCMPCON1bits.ENDCMP = 1;
}
void ADCHS_Comparator1Disable(void)
{
    ADCCMPCON1bits.ENDCMP = 0;
}
void ADCHS_Comparator1LimitSet(uint16_t low_threshold, uint16_t high_threshold)
{
    ADCCMP1bits.DCMPHI = high_threshold;
    ADCCMP1bits.DCMPLO = low_threshold;
}
void ADCHS_Comparator1EventModeSet(ADCHS_CMP_EVENT_MODE eventMode)
{
    ADCCMPCON1 = (ADCCMPCON1 & ~(ADCHS_CMP_EVENT_MODE_IEBTWN | ADCHS_CMP_EVENT_MODE_IEHIHI | ADCHS_CMP_EVENT_MODE_IEHILO | ADCHS_CMP_EVENT_MODE_IELOHI | ADCHS_CMP_EVENT_MODE_IELOLO)) | (eventMode);
}
uint8_t ADCHS_Comparator1AnalogInputIDGet(void)
{
    return ADCCMPCON1bits.AINID;
}

void ADCHS_Comparator1CallbackRegister(ADCHS_DC_CALLBACK callback, uintptr_t context)
{
    ADCHS_DCCallbackObj[0].callback_fn = callback;
    ADCHS_DCCallbackObj[0].context = context;
}

void __attribute__((used)) ADC_DC1_InterruptHandler(void)
{
    ADCHS_CHANNEL_NUM channelId;
    IFS2CLR = _IFS2_AD1DC1IF_MASK;

    channelId = ADCCMPCON1bits.AINID;

    if (ADCHS_DCCallbackObj[0].callback_fn != NULL)
    {
      ADCHS_DCCallbackObj[0].callback_fn(channelId, ADCHS_DCCallbackObj[0].context);
    }
}


bool ADCHS_EOSStatusGet(void)
{
    return (bool)(ADCCON2bits.EOSRDY);
}


