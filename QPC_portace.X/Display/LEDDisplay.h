/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef LED_DISPLAY_H
#define	LED_DISPLAY_H_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <string.h>
#include <stdint.h>
#include "qp_port.h"
#include "LDD_BSP.h"
#include "../bsp/bsp.h"

#define DARK_TIMEOUT    80
#define NSCRATCH        5

/* Data types */
typedef enum   LEDDD_State LEDDD_State;
typedef enum   DisplaySignal DisplaySignal;
typedef struct DisplayDigit DisplayDigit;
typedef struct DisplayDriver DisplayDriver;
typedef struct DisplayEvent DisplayEvent;
typedef struct DisplayDigitValue DisplayDigitValue;

enum DisplaySignal {
    LDD_DUMMY_SIG       = Q_USER_SIG + 0,
    LDD_MPX_TICK        = Q_USER_SIG + 1,
    LDD_BLICKING_ON     = Q_USER_SIG + 2,
    LDD_BLICKING_OFF    = Q_USER_SIG + 3, 
    LDD_BLICK_TMOUT     = Q_USER_SIG + 4,
    LDD_ON_SIG          = Q_USER_SIG + 5,
    LDD_OFF_SIG         = Q_USER_SIG + 6,
    LDD_NEW_VAL_SIG     = Q_USER_SIG + 7,
};

enum LEDDD_State {
    LEDD_FALSE  = 0,
    LEDDD_OK    = 1,  
};

struct DisplayDigitValue {
    char ones;
    char tens;
    char hundreds;
    char thousands;
};

struct DisplayDriver {
   QActive super;
   QTimeEvt timeTickEvent;
   QTimeEvt timeBlickEvent;
   DisplayDigitValue digitvalue;
   uint8_t DarkTime;
   void *general;
};

struct DisplayEvent {
    QEvt super;
    uint16_t value;
};

/*..............................................................................
 * 
 * Public variables
 */
extern QActive *AO_LEDDisplay;

/*..............................................................................
*
* Function prototypes 
*/
void DisplayCtor(void);
#endif	/* XC_HEADER_TEMPLATE_H */

