/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - pic24-dspic-pic32mm : v1.25
        Device            :  PIC24FJ128GA204
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC16 1.26
        MPLAB             :  MPLAB X 3.45
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include <xc.h>
#include "mcc_generated_files/mcc.h"
#include "Blinking/Blinky.h"
#include "../bsp/bsp.h"
#include "Display/LEDDisplay.h"
#include "../QPC_portace.X/Keyboard/Keyboard.h"
#include "qp_port.h"
/*
                         Main application
 * 
 *
 */

extern QActive *AO_LEDDisplay;
extern QActive *AO_Keyboard2Button;


/*..............................................................................
*
* Function prototypes 
*/
void DisplayCtor(void);
int main(void)
{
    static const QEvt *blinkySto[10];
    static const QEvt *displaySto[10];
    static const QEvt *keyboardSto[10];
    static int medPoolSto[20];
    
    char *TextString = "Ahoj MCU...\n";
    KeyboardMsg myMsg;
    // initialize the device
    SYSTEM_Initialize();
    
    while (*TextString != 0) {
        UART1_Write(*TextString);
        TextString++;
    }
    
    BSP_init();
    BlinkyCtor();
    KeyboardCtor();
    DisplayCtor();
    
    QF_init();
    
    QF_poolInit(medPoolSto, sizeof(medPoolSto), sizeof(medPoolSto[0]));
    
    QActive_start(AO_Blinky,         2U, blinkySto,   Q_DIM(blinkySto),  (void*)0, 0U, (QEvt*)0);
    QActive_start(AO_LEDDisplay,     3U, displaySto,  Q_DIM(displaySto), (void*)0, 0U, (QEvt*)0);
    QActive_start(AO_Keyboard2Button,1U, keyboardSto, Q_DIM(keyboardSto),(void*)0, 0U, (QEvt*)0);
    
    
    QF_run();   // Run QP framework.

    return -1;
}
/**
 End of File
*/