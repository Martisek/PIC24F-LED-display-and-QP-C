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
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "qp_port.h"
#include "../../bsp/bsp.h"


#define KEYBOARD_DEBUG  0


#define TMR_TICK_MS     5
#define PORT_MASK       0x0300

#define DEBOUNCING_DLY               	(uint16_t)((uint16_t)TMR_TICK_MS*1)
#define REPETICE_DLY(value)             (uint16_t)(((uint16_t)TMR_TICK_MS)*value)
#define REPETICE_CHPS(chars_per_sec)  	(uint16_t)((1000/((uint16_t)TMR_TICK_MS))/chars_per_sec)
#define KEY_ALIGN(value, shift)       	do {\
											(*(shift)) = 0; \
											while (((uint16_t)value & 0x0001) == 0)\
											{\
												value = value >> 1; \
												(*(shift))++;\
											} \
										} while(0)


typedef enum KeyboardSignals KeyboardSignals;
typedef enum KeyboardSet KeyboardSet;
typedef enum PressOrReleased PressOrReleased;
typedef struct KeyboardDriver KeyboardDriver;
typedef struct KeyboardMsg KeyboardMsg;

typedef void *(*CallBackPtr)(void);

enum KeyboardSignals {
    KEYBOARD_DUMMY_SIG  = Q_USER_SIG + 200,
	KEYBOARD_TICK_SIG   = Q_USER_SIG + 201,  
    KEYBOARD_NEWVAL_SIG = Q_USER_SIG + 202,
    KEYBOARD_START_SIG  = Q_USER_SIG + 203,
    KEYBOARD_STOP_SIG   = Q_USER_SIG + 204,
};

enum KeyboardSet {
	ONESHOT 	= 0,
	REPETITION	= 1
};

enum PressOrReleased {
	KEY_PRESSED  = 0,
	KEY_RELEASED = 1
};

struct KeyboardMsg {
    QEvt super;
    uint16_t keySignal;
    PressOrReleased PorR;
    void *ptr;
};

struct KeyboardDriver {
	QActive super;
    QTimeEvt tickEvent;
	KeyboardSet kbdSet;
	union {
		uint16_t debounCounter;
		uint16_t repdlyCounter;
	} kbdCounters;
	uint16_t repcharCounter;
	uint16_t *gpioPort;
	uint16_t portMask;
	uint16_t lastPortValue;
	uint16_t keyShift;
	uint16_t hotCode;
	CallBackPtr callBackFcn;
};


/**................................................................................................
 * 
 * @brief   Public function header.
 */
void KeyboardCtor(void);

/**................................................................................................
 * 
 * @brief   External global variable.
 */
extern QActive *AO_Keyboard2Button;

#endif	/* XC_HEADER_TEMPLATE_H */

