//=====   Basic Microcontroler Configuration   =================================
#include <p18f4550.h>

// clock configuration
#pragma config PLLDIV = 2, CPUDIV = OSC4_PLL6, USBDIV = 2, FOSC = HSPLL_HS
// clock = 16 MHz
// 1 microseconds = 4 tcy

// others configuration
#pragma config FCMEN = OFF, IESO = OFF, PWRT = ON, BOR = OFF,  BORV = 2
#pragma config VREGEN = OFF,  WDT = OFF,  WDTPS = 1,  MCLRE = ON
#pragma config LPT1OSC = OFF,  PBADEN = OFF,  CCP2MX = ON,  STVREN = ON
#pragma config LVP = OFF,  ICPRT = OFF,  XINST = OFF,  DEBUG = OFF, CP0 = OFF
#pragma config CP1 = OFF,  CP2 = OFF, CP3 = OFF, CPB = OFF,  CPD = OFF
#pragma config WRT0 = OFF,  WRT1 = OFF,  WRT2 = OFF,  WRT3 = OFF,  WRTB = OFF
#pragma config WRTC = OFF,  WRTD = OFF,  EBTR0 = OFF,  EBTR1 = OFF
#pragma config EBTR2 = OFF,  EBTR3 = OFF, EBTRB = OFF

// general initialization
void mcu_init(void) {
    ADCON1 = 0b00001111;  // disable analog inputs
    PORTD  = 0;           // ports b and d output low
    TRISD  = 0;
    PORTB  = 0;
    TRISB  = 0;
}
