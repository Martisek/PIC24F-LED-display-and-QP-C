/*******************************************************************************
 * 
 * File:   LEDDisplay_Driver.c
 * Author: martisek
 *
 * Created on March 9, 2017, 3:19 PM
 */

#include "LDD_BSP.h"


#define MYDEBUG   1

/*..............................................................................
 * 
 * In-module variables
 * 
 */
static DisplayDriver LEDDisplay;
QActive *AO_LEDDisplay = &LEDDisplay.super;

/*..............................................................................
 *
 * Function prototypes 
 * 
 */ 

void DisplayCtor(void);

static QState Display_Init(DisplayDriver *me, QEvt const *e);
static QState Display_Active(DisplayDriver *me, QEvt const *e);
static QState Display_SegOnes(DisplayDriver *me, QEvt const *e);
static QState Display_SegTens(DisplayDriver *me, QEvt const *e);
static QState Display_SegHundreds(DisplayDriver *me, QEvt const *e);
static QState Display_SegThousands(DisplayDriver *me, QEvt const *e);
static QState Display_OFF(DisplayDriver *me, QEvt const *e);
static QState Display_Paused(DisplayDriver *me, QEvt const *e);


static void Double_dabble(DisplayDriver *me, uint16_t binvalue);


#ifdef MYDEBUG
    const char SegOnesEnterString[] = "Seg ones is entering...";
    const char SegTensEnterString[] = "Seg tens is entering...";
    const char SegHunsEnterString[] = "Seg huns is entering...";
    const char SegThosEnterString[] = "Seg thos is entering...";
    
    const char SegOnesExitString[] = "Seg ones is exiting...";
    const char SegTensExitString[] = "Seg tens is exiting...";
    const char SegHunsExitString[] = "Seg huns is exiting...";
    const char SegThosExitString[] = "Seg thos is exiting...";
    
    
    char DebugInfoString[30];
#endif
    

/**========================================================================================**/
void DisplayCtor(void) {
    DisplayDriver *me = &LEDDisplay;
    QTimeEvt_ctor(&me->timeTickEvent, LDD_MPX_TICK);
    QTimeEvt_ctor(&me->timeBlickEvent, LDD_BLICK_TMOUT);
    QFsm_ctor(&me->state, Q_STATE_CAST(&DisplayInit));/* superclass ctor */
    return;
}

static QState Display_Init(DisplayDriver *me, QEvent const *e) {
    (void)e;
    me->DarkTime = DARK_TIMEOUT;
    me->digitvalue.ones = '0';
    me->digitvalue.tens = '0';
    me->digitvalue.hundreds = '0';
    me->digitvalue.thousands = '0';
    return Q_TRAN(&Display_Active);
}

/*..............................................................................
 * 
 * Display_Active 
 */ 
static QState Display_Active(DisplayDriver *me, QEvt const *e) {
    QState state;
    uint8_t trulyDisArmed;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            QTimeEvt_postEvery(&me->timeEvent, &me->super, BSP_TICKS_PER_SEC/50);
            state = Q_HANDLED();
            break;
        }
        case Q_EXIT_SIG: {
            state = Q_HANDLED();
            break;
        }
        case Q_INIT_SIG: {
            state = Q_TRAN(&Display_SegOnes);
            break;
        }
        case LDD_OFF_SIG: {
            state = Q_TRAN(&Display_OFF);
            break;
        }
        case LDD_NEW_VAL_SIG: {
            Double_dabble(me, ((DisplayEvent*)e)->value);
            state = Q_HANDLED();
            break;
        }
        case LDD_BLICKING_ON: {
            state = Q_TRAN(&Display_Paused);
            break;
        }
        case LDD_BLICKING_OFF: {
            trulyDisArmed = QTimeEvt_disarm(&me->timeBlickEvent);
            state = Q_HANDLED();
            break;
        }
        default: {
            state = Q_SUPER(&QHsm_top);
            break;
        }
    }
    return state;
}

/*..............................................................................
 * 
 * Display_SegOnes
 * 
 */ 
static QState Display_SegOnes(DisplayDriver *me, QEvt const *e) {
    QState state;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegOnesEnterString);
            #endif
            (void)LDD_Char2SegmentConvert(((DisplayDriver*)me)->digitvalue.ones);
            LEDDAnodeOnes();
            state = Q_HANDLED();
            break;
            }
        case Q_EXIT_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegOnesExitString);
            #endif
            LEDDLightOFF();
            while (me->DarkTime > 0)
                --me->DarkTime;

            me->DarkTime = DARK_TIMEOUT;
            state = Q_HANDLED();
            break;
            }
        case LDD_MPX_TICK: {
            state = Q_TRAN(&Display_SegTens);
            break;
        }    
    }
    return state;
}

/*..............................................................................
 * 
 * Led display tens segment function handler
 * 
 */ 
static QState Display_SegTens(DisplayDriver *me, QEvt const *e) {
    QState state;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegTensEnterString);
            #endif
            (void)LDD_Char2SegmentConvert(((DisplayDriver*)me)->digitvalue.tens);
            LEDDAnodeTens();
            state = Q_HANDLED();
            break;
            }
        case Q_EXIT_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegOnesExitString);
            #endif
            LEDDLightOFF();
            while (me->DarkTime > 0)
                --me->DarkTime;

            me->DarkTime = DARK_TIMEOUT;
            state = Q_HANDLED();
            break;
            }
        case LDD_MPX_TICK: {
            state = Q_TRAN(&Display_SegHundreds);
            break;
        }    
    }
    return state;
}

/*..............................................................................
 * 
 * Led display tens segment function handler
 * 
 */ 
static QState Display_SegTens(DisplayDriver *me, QEvt const *e) {
    QState state;
    
    switch (e->sig) {
        case Q_ENTRY_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegTensEnterString);
            #endif
            (void)LDD_Char2SegmentConvert(((DisplayDriver*)me)->digitvalue.tens);
            LEDDAnodeTens();
            state = Q_HANDLED();
            break;
            }
        case Q_EXIT_SIG: {
            #ifdef MYDEBUG
                strcpy(DebugInfoString, SegOnesExitString);
            #endif
            LEDDLightOFF();
            while (me->DarkTime > 0)
                --me->DarkTime;

            me->DarkTime = DARK_TIMEOUT;
            state = Q_HANDLED();
            break;
            }
        case LDD_MPX_TICK: {
            state = Q_TRAN(&Display_SegHundreds);
            break;
        }    
    }
    return state;
}

/* Hundreds digit */
QState DisplaySegHundreds(DisplayDriver *me, QEvent const *e)
{
    switch (e->sig)
    {
        case Q_ENTRY_SIG:
            {
                #ifdef MYDEBUG
                    strcpy(DebugInfoString, SegHunsEnterString);
                #endif
                (void)LDD_Char2SegmentConvert(((DisplayDriver*)me)->digitvalue.hundreds);
                LEDDAnodeHundreds();

                return Q_HANDLED();
            }
        case Q_EXIT_SIG:
            {
                #ifdef MYDEBUG
                    strcpy(DebugInfoString, SegHunsExitString);
                #endif
                LEDDLightOFF();
                while (me->DarkTime > 0)
                    --me->DarkTime;

                me->DarkTime = DARK_TIMEOUT;
                return Q_HANDLED();

            }
        case DARK:
            {
                return Q_TRAN(&DisplayOFF);
            }
        case TICK:
            {
                return Q_TRAN(&DisplaySegThousands);
            }
    }
    return Q_IGNORED();
}

/**========================================================================================**/

/* Algorithm for BIN to BCD conversion */
void Double_dabble(DisplayDriver *me, uint16_t binvalue)
{
    char scratch[6] = {0, 0, 0, 0, 0, 0};
    int j, k;
    int smin = NSCRATCH-2;    /* speed optimization */
    char *accessptr;

    accessptr = (char*)me;

    for (j = 0; j < 16; ++j)
        {
            /* This bit will be shifted in on the right. */
            int shifted_in = (binvalue & (1 << (15-j)))? 1: 0;

            /* Add 3 everywhere that scratch[k] >= 5. */
            for (k = smin; k < NSCRATCH; ++k)
              scratch[k] += (scratch[k] >= 5)? 3: 0;

            /* Shift scratch to the left by one position. */
            if (scratch[smin] >= 8)
              smin -= 1;
            for (k=smin; k < NSCRATCH-1; ++k) {
                scratch[k] <<= 1;
                scratch[k] &= 0xF;
                scratch[k] |= (scratch[k+1] >= 8);
            }

            /* Shift in the new bit from arr. */
            scratch[NSCRATCH-1] <<= 1;
            scratch[NSCRATCH-1] &= 0xF;
            scratch[NSCRATCH-1] |= shifted_in;
        }

    /* Certain output creating */
    for (k = 0; k < NSCRATCH; k++)
       *(accessptr + 3 + k) = scratch[4-k] + '0';

    return;
}

LEDDD_State LDD_Char2SegmentConvert(char value)
{
    switch (value)
    {
        case '0':   LDD_SHOW_0();
                    return LEDDD_OK;
                    
        case '1':   LDD_SHOW_1();
                    return LEDDD_OK;
                    
        case '2':   LDD_SHOW_2();
                    return LEDDD_OK;
                    
        case '3':   LDD_SHOW_3();
                    return LEDDD_OK;
                    
        case '4':   LDD_SHOW_4();
                    return LEDDD_OK;
                    
        case '5':   LDD_SHOW_5();
                    return LEDDD_OK;
                    
        case '6':   LDD_SHOW_6();
                    return LEDDD_OK;
                    
        case '7':   LDD_SHOW_7();
                    return LEDDD_OK;
                    
        case '8':   LDD_SHOW_8();
                    return LEDDD_OK;
                    
        case '9':   LDD_SHOW_9();
                    return LEDDD_OK;
                    
        case 'E':   LDD_SHOW_E();
                    return LEDDD_OK;
                    
        case 'r':   LDD_SHOW_r();
                    return LEDDD_OK;
                    
        default:    LDD_SHOW_0();
                    return LEDD_FALSE;
    }
}



