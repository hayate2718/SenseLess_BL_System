/*******************************************************************************
 System Interrupts File

  Company:
    Microchip Technology Inc.

  File Name:
    interrupt.c

  Summary:
    Interrupt vectors mapping

  Description:
    This file maps all the interrupt vectors to their corresponding
    implementations. If a particular module interrupt is used, then its ISR
    definition can be found in corresponding PLIB source file. If a module
    interrupt is not used, then its ISR implementation is mapped to dummy
    handler.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "interrupts.h"
#include "definitions.h"



// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector Functions
// *****************************************************************************
// *****************************************************************************


/* All the handlers are defined here.  Each will call its PLIB-specific function. */
// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector declarations
// *****************************************************************************
// *****************************************************************************
void TIMER_1_Handler (void);
void TIMER_2_Handler (void);
void UART1_FAULT_Handler (void);
void UART1_RX_Handler (void);
void UART1_TX_Handler (void);
void CHANGE_NOTICE_D_Handler (void);
void ADC_DC1_Handler (void);
void CAN1_Handler (void);
void PWM3_Handler (void);


// *****************************************************************************
// *****************************************************************************
// Section: System Interrupt Vector definitions
// *****************************************************************************
// *****************************************************************************
void __attribute__((used)) __ISR(_TIMER_1_VECTOR, ipl1SRS) TIMER_1_Handler (void)
{
    TIMER_1_InterruptHandler();
}

void __attribute__((used)) __ISR(_TIMER_2_VECTOR, ipl1SRS) TIMER_2_Handler (void)
{
    TIMER_2_InterruptHandler();
}

void __attribute__((used)) __ISR(_UART1_FAULT_VECTOR, ipl5SRS) UART1_FAULT_Handler (void)
{
    UART1_FAULT_InterruptHandler();
}

void __attribute__((used)) __ISR(_UART1_RX_VECTOR, ipl5SRS) UART1_RX_Handler (void)
{
    UART1_RX_InterruptHandler();
}

void __attribute__((used)) __ISR(_UART1_TX_VECTOR, ipl5SRS) UART1_TX_Handler (void)
{
    UART1_TX_InterruptHandler();
}

void __attribute__((used)) __ISR(_CHANGE_NOTICE_D_VECTOR, ipl6SRS) CHANGE_NOTICE_D_Handler (void)
{
    CHANGE_NOTICE_D_InterruptHandler();
}

void __attribute__((used)) __ISR(_ADC_DC1_VECTOR, ipl3SRS) ADC_DC1_Handler (void)
{
    ADC_DC1_InterruptHandler();
}

void __attribute__((used)) __ISR(_CAN1_VECTOR, ipl1SRS) CAN1_Handler (void)
{
    CAN1_InterruptHandler();
}

void __attribute__((used)) __ISR(_PWM3_VECTOR, ipl2SRS) PWM3_Handler (void)
{
    PWM3_InterruptHandler();
}




/*******************************************************************************
 End of File
*/
