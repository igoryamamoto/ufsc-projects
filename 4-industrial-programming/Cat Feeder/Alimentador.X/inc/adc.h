//=====   Get analogic reading from channel   ==================================
#define ADC_CH_0     0<<2
#define ADC_CH_1     1<<2

//----- read analogic channel A0 or A1 -----------------------------------------
//- return int in [0,1023] (10 bit)
int analog_read(unsigned char channel) {

    switch(channel){         // set channel, if valid
    case ADC_CH_0:
    case ADC_CH_1:
        ADCON0 = channel & 0b00111100;
    break;
    default:
        return -1;
    }
    ADCON1 = 0b00001101;     // activate analog channels A0, A1
                             // Vdd - Vss
    ADCON2 = 0b10111110;     // select a/d time and clock
    ADCON0bits.ADON = 1;     // turn ADC on
    ADCON0bits.DONE = 1;     // start conversion
    WAIT_10US();             // wait a bit
    while(ADCON0bits.GO);    // wait for converstion
    PIR1bits.ADIF = 0;       // clear interrupt flag
    ADCON0bits.ADON = 0;     // turn ADC off
    ADCON1 = 0b00001111;     // de-activate all analog channels
                             // Vdd - Vss
    return ADRES;            // return reading
}
