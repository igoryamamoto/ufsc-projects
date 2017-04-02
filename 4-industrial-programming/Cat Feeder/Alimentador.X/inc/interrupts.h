//=====   Interrupt Functions   ================================================

//----- declaration of handler functions ---------------------------------------
void int0_isr(void);
//void int1_isr(void);
//void int2_isr(void);
void timer3_isr(void);
void timer0_isr(void);

//----- interrupt isr ----------------------------------------------------------
void high_isr(void);
void low_isr(void);

//----- setup external interrupts ----------------------------------------------
void isr_init(void) {
    RCON    = 0b11111111;   // interrupt priorities enabled
    INTCON2 = 0b00000000;   // pull-ups enabled,
                            // set external interrupts on rising edge,
    INTCON3 = 0b11011000;   // set external interrupts enabled and high priority
    INTCON  = 0b11010000;   // enable global, peripheral interrupts
                            // enable external B0 interrupt
    ADCON1  = 0b00001111;
    PORTB   = 0;            // set port B as input for interrupts
    TRISB   = 0b00000111;
}

//----- high priority interrupt vector -----------------------------------------
#pragma code high_vector=0x08
void interrupt_at_high_vector(void) {
    _asm
        GOTO high_isr // redirect to interrupt handler
    _endasm
}
#pragma code

//----- high priority interrupt handler ----------------------------------------
#pragma interrupt high_isr
void high_isr(void) {
    if(INTCONbits.INT0IF) {      // interrupt: int0
        int0_isr();              // call user function
        INTCONbits.INT0IF = 0;   // erase flag
    }
    /*if(INTCON3bits.INT1IF) {     // interrupt: int1
        int1_isr();              // call user function
        INTCON3bits.INT1IF = 0;  // erase flag
    }
    if(INTCON3bits.INT2IF) {     // interrupt: int2
        int2_isr();              // call user function
        INTCON3bits.INT2IF = 0;  // erase flag
    }*/
    
}

//----- low priority interrupt vector ------------------------------------------
#pragma code low_vector=0x18
void interrupt_at_low_vector(void) {
    _asm
        GOTO low_isr // redirect to interrupt handler
    _endasm
}
#pragma code

//----- low priority interrupt handler -----------------------------------------
#pragma interruptlow low_isr
void low_isr(void) {
    if(INTCONbits.TMR0IF) {     // interrupt: timer 0
        timer0_isr();              // call user function
        INTCONbits.TMR0IF = 0;  // erase flag
    }
    if(PIR2bits.TMR3IF) {     // interrupt: timer 3 overflow
        timer3_isr();         // call user function
        PIR2bits.TMR3IF = 0;  // erase flag
    }
}
