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
#ifndef LDD_BSP_H
#define	LDD_BSP_H

    #include <xc.h>      


    #define LDD_MASK_0_PC   ~0x000E
    #define LDD_MASK_1_PC   ~0x0004
    #define LDD_MASK_2_PC   ~0x001A
    #define LDD_MASK_3_PC   ~0x001E
    #define LDD_MASK_4_PC   ~0x0014
    #define LDD_MASK_5_PC   ~0x001E
    #define LDD_MASK_6_PC   ~0x001E
    #define LDD_MASK_7_PC   ~0x0006
    #define LDD_MASK_8_PC   ~0x003E
    #define LDD_MASK_9_PC   ~0x0016
    #define LDD_MASK_E_PC   ~0x001A
    #define LDD_MASK_r_PC   ~0x0010

    #define LDD_MASK_0_PA   ~0x010C
    #define LDD_MASK_1_PA   ~0x0008
    #define LDD_MASK_2_PA   ~0x0108
    #define LDD_MASK_3_PA   ~0x0008
    #define LDD_MASK_4_PA   ~0x000C
    #define LDD_MASK_5_PA   ~0x0004
    #define LDD_MASK_6_PA   ~0x0104
    #define LDD_MASK_7_PA   ~0x0008
    #define LDD_MASK_8_PA   ~0x010C
    #define LDD_MASK_9_PA   ~0x000C
    #define LDD_MASK_E_PA   ~0x0104
    #define LDD_MASK_r_PA   ~0x0100

    #define LDD_MASK_DARK_PC ~0xFFC1
    #define LDD_MASK_DARK_PA ~0xFE73
    #define LDD_MASK_DARK_PB ~0x57FF
    
    /*..........................................................................
     * Function-like macros 
     * 
     */
    
    #define LDD_SHOW_0()    do {\
                                PORTC = PORTC & LDD_MASK_0_PC;\
                                PORTA = PORTA & LDD_MASK_0_PA;\
                            } while (0)

    #define LDD_SHOW_1()    do {\
                                PORTC = PORTC & LDD_MASK_1_PC;\
                                PORTA = PORTA & LDD_MASK_1_PA;\
                            } while (0)

    #define LDD_SHOW_2()    do {\
                                PORTC = PORTC & LDD_MASK_2_PC;\
                                PORTA = PORTA & LDD_MASK_2_PA;\
                            } while (0)

    #define LDD_SHOW_3()    do {\
                                PORTC = PORTC & LDD_MASK_3_PC;\
                                PORTA = PORTA & LDD_MASK_3_PA;\
                            } while (0)

    #define LDD_SHOW_4()    if (1) {\
                                PORTC = PORTC & LDD_MASK_4_PC;\
                                PORTA = PORTA & LDD_MASK_4_PA;\
                            } else ((void)0)

    #define LDD_SHOW_5()    if (1) {\
                                PORTC = PORTC & LDD_MASK_5_PC;\
                                PORTA = PORTA & LDD_MASK_5_PA;\
                            } else ((void)0)

    #define LDD_SHOW_6()    if (1) {\
                                PORTC = PORTC & LDD_MASK_6_PC;\
                                PORTA = PORTA & LDD_MASK_6_PA;\
                            } else ((void)0)

    #define LDD_SHOW_7()    if (1) {\
                                PORTC = PORTC & LDD_MASK_7_PC;\
                                PORTA = PORTA & LDD_MASK_7_PA;\
                            } else ((void)0)

    #define LDD_SHOW_8()    if (1) {\
                                PORTC = PORTC & LDD_MASK_8_PC;\
                                PORTA = PORTA & LDD_MASK_8_PA;\
                            } else ((void)0)

    #define LDD_SHOW_9()    if (1) {\
                                PORTC = PORTC & LDD_MASK_9_PC;\
                                PORTA = PORTA & LDD_MASK_9_PA;\
                            } else ((void)0)

    #define LDD_SHOW_E()    if (1) {\
                                PORTC = PORTC & LDD_MASK_E_PC;\
                                PORTA = PORTA & LDD_MASK_E_PA;\
                            } else ((void)0)

    #define LDD_SHOW_r()    if (1) {\
                                PORTC = PORTC & LDD_MASK_r_PC;\
                                PORTA = PORTA & LDD_MASK_r_PA;\
                            } else ((void)0)
    
    
    #define LEDDLightOFF()  if (1) {\
                                PORTC = LATC | LDD_MASK_DARK_PC;\
                                PORTA = LATA | LDD_MASK_DARK_PA;\
                                PORTB = LATB | LDD_MASK_DARK_PB;\
                             } else ((void)0)

    #define LEDDAnodeOnes()     ((PORTBbits.RB15) = (unsigned)0)
    #define LEDDAnodeTens()     ((PORTAbits.RA7)  = (unsigned)0)
    #define LEDDAnodeHundreds() ((PORTBbits.RB13) = (unsigned)0)
    #define LEDDAnodeThousands()((PORTBbits.RB11) = (unsigned)0)
   
    /*========================================================================*/
   
  

#endif	/* XC_HEADER_TEMPLATE_H */

