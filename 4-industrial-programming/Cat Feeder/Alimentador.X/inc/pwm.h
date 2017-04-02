//=====   PWM Functions   ======================================================
#define pwm1_set_dc(x)      CCPR1L=255-x  // set duty cycle (normal high)
#define pwm2_set_dc(x)      CCPR2L=255-x  // set duty cycle (normal high)

//----- setup pwm 1 ------------------------------------------------------------
void pwm1_init(void) {
    PR2   = 0b11111111;              // pwm period constant
    T2CON = 0b00000111;              // timer 2 on, prescaler 16

    PORTCbits.RC2    = 0;            // RC2 is pwm output
    TRISCbits.TRISC2 = 0;
    pwm1_set_dc(0);                  // set duty cycle
    CCP1CON          = 0b00111111;   // pwm mode
}

//----- setup pwm 2 ------------------------------------------------------------
void pwm2_init(void) {
    PR2   = 0b11111111;              // pwm period constant
    T2CON = 0b00000111;              // timer 2 on, prescaler 16

    PORTCbits.RC1    = 0;            // RC1 is pwm output
    TRISCbits.TRISC1 = 0;
    pwm2_set_dc(0);                  // set duty cycle
    CCP2CON          = 0b00111111;   // pwm mode
}
