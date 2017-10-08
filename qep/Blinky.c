/******************************************************************************/
/**
 * 
 * 
 * 
 * 
 * 
 * 
 */

#include "Blinky.h"


void BlinkyCtor(void);
static QState Blinky_init(Blinky *me, QEvt const *e);
static QState Blinky_On(Blinky *me, QEvt const *e);
static QState Blinky_Off(Blinky *me, QEvt const *e);

static Blinky blinkyObject;
Blinky *AO_Blinky = &blinkyObject;

void BlinkyCtor(void) {
    Blinky *me = &blinkyObject;
    QActive_ctor(&me->super, Q_STATE_CAST(&Blinky_init));
    QTimeEvt_ctor(&me->timeEvt, TIME_OUT_SIG);
    return;
}

static QState Blinky_init(Blinky *me, QEvt const *e)
{
    me->countTimer = 10;
    QTimeEvt_postEvery(&me->timeEvt, &me->super, BSP_TICKS_PER_SEC/10);
    return Q_TRAN(&Blinky_Off);
}

static QState Blinky_On(Blinky *me, QEvt const *e)
{
    QState state;

    switch(e->sig){
        case Q_ENTRY_SIG: {
            me->countTimer = 10;
            LED_ON();
            state = Q_HANDLED();
            break;
        }

        case Q_EXIT_SIG: {
            state = Q_HANDLED();
            break;
        }

        case TIME_OUT_SIG: {
            me->countTimer--;
            if (me->countTimer == 0)
                state = Q_TRAN(&Blinky_Off);
            else
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

static QState Blinky_Off(Blinky *me, QEvt const *e)
{
    QState state;

    switch(e->sig){
        case Q_ENTRY_SIG: {
            me->countTimer = 10;
            LED_OFF();
            state = Q_HANDLED();
            break;
        }

        case Q_EXIT_SIG: {
            state = Q_HANDLED();
            break;
        }

        case TIME_OUT_SIG: {
            me->countTimer--;
            if (me->countTimer == 0)
                state = Q_TRAN(&Blinky_On);
            else
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

