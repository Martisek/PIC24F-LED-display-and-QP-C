/**************************************************************************************************
 * 
 * @file    Keyboard.c
 * 
 * @brief   Implementation of small keyboard (only 2 buttons), based on QP/C framework.
 * 
 * @author  Ing. M. Martisek
 * @date    04. 11. 2017
 * @ide     MPLAB X 3.51 with XC16 C compiler
 * 
 */


#include "Keyboard.h"

char DebugInfo[35];

const char KbdInitString[] = "State: INIT       		\n";
const char KbdIdleString[] = "State: IDLE       		\n";
const char KbdActvString[] = "State: ACTIVE      		\n";
const char KbdScanString[] = "State: SCANNING   		\n";
const char KbdDebnString[] = "State: DEBOUNCING 		\n";
const char KbdPresString[] = "State: PRESSED    		\n";
const char KbdRelsString[] = "State: RELEASED   		\n";
const char KbdSlRpString[] = "State: SLOW REPT  		\n";
const char KbdFsRpString[] = "State: FAST REPT  		\n";
const char KbdQuWrString[] = "Writing into FIFO 	    \n";

/**.............................................................................................../
 * 
 * @brief   In-module global variables.
 * 
 */
static KeyboardDriver Keyboard2Button;
QActive *AO_Keyboard2Button = &Keyboard2Button.super;

/**................................................................................................
 * 
 * @brief   Function prototypes
 * 
 */

void KeyboardCtor(void);
static QState Keyboard_active(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_idle(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_init(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_scanning(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_debouncing(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_pressed(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_released(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_slowRepet(KeyboardDriver *me, QEvt const *e);
static QState Keyboard_fastRepet(KeyboardDriver *me, QEvt const *e);

void hotCallbackFunction(void);

/**................................................................................................
 * 
 * @brief   void KeyboardCtor(void).
 * 
 */
void KeyboardCtor(void) {
    KeyboardDriver *me = &Keyboard2Button;
    QActive_ctor(&me->super, Q_STATE_CAST(&Keyboard_init));
    QTimeEvt_ctor(&me->tickEvent, KEYBOARD_TICK_SIG);
    return;
}

/**................................................................................................
 * 
 * @brief   static QState Keyboard_init(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_init(KeyboardDriver *me, QEvt const *e) {
	uint16_t keyShiftVal;
	uint32_t portMaskMirr;
    
    (void)e;

	portMaskMirr = PORT_MASK;

	me->kbdSet = REPETITION;
	me->gpioPort = &PORTC;
	me->kbdCounters.debounCounter = DEBOUNCING_DLY;
	me->portMask = PORT_MASK;
	KEY_ALIGN(portMaskMirr, &keyShiftVal);
	me->keyShift = keyShiftVal;
	me->hotCode = 3;
	me->callBackFcn = &hotCallbackFunction;
	me->lastPortValue = 0;
    
    #if (KEYBOARD_DEBUG)
        memcpy(DebugInfo, KbdInitString, strlen(KbdInitString));
    #endif
   
    return Q_TRAN(&Keyboard_idle);  
}

/**................................................................................................
 * 
 * @brief   static QState Keyboard_idle(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_idle(KeyboardDriver *me, QEvt const *e) {
    QState state;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdIdleString, strlen(KbdIdleString));
            #endif
            state = Q_HANDLED();
            break;
        }
        case Q_EXIT_SIG: {
            state = Q_HANDLED();
            break;
        }
        case KEYBOARD_START_SIG: {
            state = Q_TRAN(&Keyboard_active);
            break;
        }
        default: {
            state = Q_SUPER(&QHsm_top);
            break;
        }
    }
    return state;
}

/**................................................................................................
 * 
 * @brief   static QState Keyboard_active(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_active(KeyboardDriver *me, QEvt const *e) {
    QState state;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdActvString, strlen(KbdActvString));
            #endif
            QTimeEvt_postEvery(&me->tickEvent, &me->super, BSP_TICKS_PER_SEC/200);
            break;
        }
        case Q_EXIT_SIG: {
            (void)QTimeEvt_disarm(&me->tickEvent);
            break;
        }
        case Q_INIT_SIG: {
            state = Q_TRAN(&Keyboard_scanning);
            break;
        }
        case KEYBOARD_STOP_SIG: {
            state = Q_TRAN(&Keyboard_idle);
            break;
        }
        default: {
            state = Q_SUPER(&QHsm_top);
            break;
        }
    }
    return state;
}

/**................................................................................................
 * 
 * @brief   static QState Keyboard_scanning(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_scanning(KeyboardDriver *me, QEvt const *e) {
	uint16_t portMasking;
    QState state;

	portMasking = *me->gpioPort & me->portMask;

	switch (e->sig) {
		case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdScanString, strlen(KbdScanString));
            #endif
            state = Q_HANDLED();
            break;
        }
        case Q_EXIT_SIG: {
			state = Q_HANDLED();
            break;
        }

		case KEYBOARD_TICK_SIG: {
            if (portMasking ^ me->portMask) {
                me->lastPortValue = portMasking ^ me->portMask;
                state = Q_TRAN(&Keyboard_debouncing);
            }
            else
                state = Q_HANDLED();
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
        }
    }
    return state;
}

/**................................................................................................
 * 
 * @brief   static QState Keyboard_debouncing(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_debouncing(KeyboardDriver *me, QEvt const *e) {
	uint16_t portMasking;
    QState state;

	portMasking = *me->gpioPort & me->portMask;

	switch (e->sig) {
		case Q_ENTRY_SIG: {  
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdDebnString, strlen(KbdDebnString));
            #endif
            me->kbdCounters.debounCounter = DEBOUNCING_DLY;
            state = Q_HANDLED();
            break;
        }
        case Q_EXIT_SIG: {
			state = Q_HANDLED();
            break;
        }
		case KEYBOARD_TICK_SIG:	{
            if ((portMasking ^ me->portMask) == me->lastPortValue) {
                if (me->kbdCounters.debounCounter > 0) {
                    me->kbdCounters.debounCounter --;
                }
                else
                    state = Q_TRAN(&Keyboard_pressed);
            }
        	else
                state = Q_TRAN(&Keyboard_scanning);
            
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
            break;
        }
	}
	return state;
}

/**................................................................................................
 * 
 * @brief  static QState Keyboard_pressed(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_pressed(KeyboardDriver *me, QEvt const *e) {
	uint16_t portMasking;
	uint16_t keyPressedVal;

    portMasking = *me->gpioPort & me->portMask;
    
    QState state;

	switch (e->sig) {
		case Q_ENTRY_SIG: { 
            #if (KEYBOARD_DEBUG)          
                memcpy(DebugInfo, KbdPresString, strlen(KbdPresString));
            #endif
            keyPressedVal = me->lastPortValue >> me->keyShift;
            //KeyboardMsg *kbdMsg = Q_NEW();
            //kbdMsg->keySignal = keyPressedVal;
            //kbdMsg->PorR = KEY_PRESSED;
            
            me->kbdCounters.repdlyCounter = REPETICE_DLY(2);

            state = Q_HANDLED();
            break;
        }
		case Q_EXIT_SIG: {
            state = Q_HANDLED();
            break;
        }

		case KEYBOARD_TICK_SIG: {
            state = Q_HANDLED();
            if ((portMasking ^ me->portMask) == me->lastPortValue) {
                if (me->kbdSet == REPETITION) {
                    if (me->kbdCounters.repdlyCounter > 0) {
                        me->kbdCounters.debounCounter --;
                    }
                    else {
                        state = Q_TRAN(&Keyboard_slowRepet);
                    }
                }
            }
            else {
                state = Q_TRAN(&Keyboard_released);
            }
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
            break;
        }
    }

    return state;
}

/**................................................................................................
 * 
 * @brief  static QState Keyboard_slowRepet(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_slowRepet(KeyboardDriver *me, QEvt const *e) {
	uint16_t portMasking;
	uint16_t keyPressedVal;
    
    QState state;

	portMasking = *me->gpioPort & me->portMask;

	switch (e->sig) {
		case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)              
                memcpy(DebugInfo, KbdSlRpString, strlen(KbdSlRpString));
            #endif
            me->repcharCounter = REPETICE_CHPS(15);
            me->kbdCounters.repdlyCounter = REPETICE_DLY(20);

            keyPressedVal = me->lastPortValue >> me->keyShift;
            //KeyboardMsg *kbdMsg = Q_NEW();
            //kbdMsg->keySignal = keyPressedVal;
            //kbdMsg->PorR = KEY_PRESSED;
            state =  Q_HANDLED();
            break;
        }
		case Q_EXIT_SIG: {
			state = Q_HANDLED();
            break;
        }
		case KEYBOARD_TICK_SIG: {	
            state = Q_HANDLED();
            if ((portMasking ^ me->portMask) == me->lastPortValue) {
                if (me->kbdCounters.repdlyCounter > 0) {
                    me->kbdCounters.debounCounter --;
                }
                else {
                    state = Q_TRAN(&Keyboard_fastRepet);
                }

                if (me->repcharCounter > 0) {
                    me->repcharCounter --;
                }
                else {
                    me->repcharCounter = REPETICE_CHPS(5);

                    keyPressedVal = me->lastPortValue >> me->keyShift;
                    //KeyboardMsg *kbdMsg = Q_NEW();
                    //kbdMsg->keySignal = keyPressedVal;
                    //kbdMsg->PorR = KEY_PRESSED;
                }
            }
            else {
                state = Q_TRAN(&Keyboard_released);
            }
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
            break;
        }
    }
	return state;
}


/**................................................................................................
 * 
 * @brief  static QState Keyboard_fastRepet(KeyboardDriver *me, QEvt const *e).
 * 
 */
static QState Keyboard_fastRepet(KeyboardDriver *me, QEvt const *e) {
	uint16_t portMasking;
	uint16_t keyPressedVal;
    QState state;
    
	portMasking = *me->gpioPort & me->portMask;

	switch (e->sig) {
		case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdFsRpString, strlen(KbdFsRpString));
            #endif
            me->repcharCounter = REPETICE_CHPS(10);

            state = Q_HANDLED();
        }
		case Q_EXIT_SIG: {
			state = Q_HANDLED();
        }
		case KEYBOARD_TICK_SIG: {
            if ((portMasking ^ me->portMask) == me->lastPortValue) {
                if (me->repcharCounter > 0) {
					me->repcharCounter --;
                }
				else {
                    me->repcharCounter = REPETICE_CHPS(10);

                    keyPressedVal = me->lastPortValue >> me->keyShift;
                    //KeyboardMsg *kbdMsg = Q_NEW();
                    //kbdMsg->keySignal = keyPressedVal;
                    //kbdMsg->PorR = KEY_PRESSED;
                }
                state = Q_HANDLED();
			}
			else {
				state = Q_TRAN(&Keyboard_released);
            }
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
            break;
        }
    }
	return state;
}

/**................................................................................................
 * 
 * @brief  static QState Keyboard_released(KeyboardDriver *me, QEvent const *e);.
 * 
 */
static QState Keyboard_released(KeyboardDriver *me, QEvt const *e) {
	uint16_t keyPressedVal;
    QState state;

	switch (e->sig) {
		case Q_ENTRY_SIG: {
            #if (KEYBOARD_DEBUG)
                memcpy(DebugInfo, KbdRelsString, strlen(KbdRelsString));
            #endif
            keyPressedVal = me->lastPortValue >> me->keyShift;
            //KeyboardMsg *kbdMsg = Q_NEW();
            //kbdMsg->keySignal = keyPressedVal;
            //kbdMsg->PorR = KEY_RELEASED;
            state = Q_HANDLED();
            break;
        }
        case KEYBOARD_TICK_SIG: {
			state = Q_TRAN(&Keyboard_scanning);
        }
		case Q_EXIT_SIG: {
			state = Q_HANDLED();
            break;
        }
        default: {
            state = Q_SUPER(&Keyboard_active);
            break;
        }
	}
	return state;
}


void hotCallbackFunction(void) {
    return;
}



	


