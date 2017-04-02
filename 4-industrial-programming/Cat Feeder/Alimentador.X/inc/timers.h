//=====   Timer functions   ====================================================

// needs:
// #include "inc/interrupts.h"

// 1 microseconds = 4 tcy

// 1000000us = 4000000tcy = 64 * 62500
#define TIMER0_INIT_VAL     0xFFFF-62500

// 1000us = 4000tcy = 1 * 4000
#define TIMER3_INIT_VAL     0xFFFF

// timer 1 operating as counter
#define COUNTER1_INIT_VAL   0

//----- union for timer value --------------------------------------------------
union timer_v {
    unsigned int w;
    char b[2];
};

//===== Timer 0 for regulating loop period =====================================

//----- starts timer 0 for a ~1s period -------------------------------------
void timer0_init(void) {
    union timer_v t;
    t.w = TIMER0_INIT_VAL;    // timer 0 initial counter value
    T0CON = 0b00000101;       // prescale = 64
    TMR0H = t.b[1];           // set timer 0 counter value
    TMR0L = t.b[0];
    INTCONbits.TMR0IE = 1;    // turn interrupt overflow on
    T0CONbits.TMR0ON = 1;     // turn timer 0 on
}

//---- wait for period to finish and reset -------------------------------------
void timer0_wait(void) {
    union timer_v t;
    t.w = TIMER0_INIT_VAL;        // timer 0 initial counter value
    while( !INTCONbits.TMR0IF );
    INTCONbits.TMR0IF = 0;        // clear interrupt flag
    TMR0H = t.b[1];               // set timer 0 counter value
    TMR0L = t.b[0];
}

//===== Timer 1 for fan counter ================================================
#define counter1_clear()      TMR1H=0;TMR1L=0
#define counter1_read()       ((((unsigned int)TMR1H)<<8)+TMR1L)

void counter1_init(void) {
    PIE1bits.TMR1IE = 0;      // disable counter 1 overflow interrupt
    T1CON = 0b10000110;       // prescale = 1, external source, no sync
    counter1_clear();
    T1CONbits.TMR1ON = 1;     // turn counter 1 on
}

//===== Timer 3 for 1ms led_show interrupt =====================================

//----- starts timer 3 for a ~1ms period ---------------------------------------
void timer3_init(void) {
    union timer_v t;
    t.w = TIMER3_INIT_VAL;  // timer 3 initial counter value
    IPR2bits.TMR3IP = 0;    // set timer 3 interrupt on low priority
    PIE2bits.TMR3IE = 0;
    T3CON = 0b10011000;     // prescale = 8
    TMR3H = t.b[1];        // set timer 3 counter value
    TMR3L = t.b[0];
    PIE2bits.TMR3IE = 1;   // enable timer 3 overflow interrupt
    T3CONbits.TMR3ON = 1;  // turn timer 3 on
}
