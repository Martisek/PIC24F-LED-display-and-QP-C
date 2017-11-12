/**************************************************************************************************
 * 
 * @file    Blinky.h
 * 
 * @brief   Header file for Blinky active object.
 * 
 * @author  Ing. M. Martisek
 * @date    08. 11. 2017
 * @email   martisek.m@tiscali.cz
 * 
 * @ide     MPLAB X v3.51
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef BLINKY_H
#define	BLINKY_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "../../bsp/bsp.h"
#include "../../include/qp_port.h"


typedef struct Blinky Blinky;
typedef enum BlinkySig BlinkySig;


struct Blinky
{
    QActive super;
    QTimeEvt timeEvt;
    int countTimer;
};

enum BlinkySig
{
    DUMMY_SIG       = Q_USER_SIG + 100,
    TIME_OUT_SIG    = Q_USER_SIG + 101,
    MAX_SIG         = Q_USER_SIG + 102,
};


extern QActive *AO_Blinky;
void BlinkyCtor(void);

#endif	/* BLINKY_H */

