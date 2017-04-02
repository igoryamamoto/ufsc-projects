//=====   USART functions   ====================================================

// needs:
#include <stdlib.h>
// optional for string manipulation:
#include <ctype.h>
#include <string.h>

#define USART_BS          10 // usart buffer size

#define BAUD_9600         25 // baud rate constant

#define usart_rdy()       PIR1bits.RCIF    // check if char has been received
#define usart_busy()      !TXSTAbits.TRMT  // check if char can be writen
#define usart_write(x)    TXREG=x          // write char
#define usart_read()      RCREG            // read a char (non-blocking)

//----- initialize usart -------------------------------------------------------
void usart_init(void) {
    PIE1bits.RCIE = 0;     // disable interrupts
    PIE1bits.TXIE = 0;
    TXSTA = 0;             // set POR values
    RCSTA = 0;
    RCSTAbits.CREN = 1;    // continuous receive mode
    SPBRGH = 0;            // set baud rate
    SPBRG = BAUD_9600;
    TRISCbits.TRISC6 = 0;  // configure port
    TRISCbits.TRISC7 = 1;
    TXSTAbits.TXEN = 1;    // enable usart
    RCSTAbits.SPEN = 1;
}

//----- get a char (blocking) --------------------------------------------------
char usart_getc(void) {
    while(!usart_rdy());            // wait
    PIR1bits.RCIF = 0;              // clear interrupt flag
    return usart_read();            // read data
}

//----- get a string (blocking) ------------------------------------------------
unsigned char usart_gets(char *s) {

    unsigned char i = 0;
    char dat;

    for(i; i<USART_BS-1; i++) {
        while(!usart_rdy());       // wait
        PIR1bits.RCIF = 0;         // clear interrupt flag
        dat = usart_read();        // read char

        if(dat == '\n' || dat == 0) {   // if new line or null char
            s[i] = 0;                   // finish string
            break;                      // stop
        }
        s[i] = dat;
    }
    return i;                      // return number of bytes received
}

//----- write a char -----------------------------------------------------------
void usart_putc(char x) {
    while(usart_busy());
    usart_write(x);
}

//----- write a string from rom ------------------------------------------------
void usart_put(const rom char *s) {
    while(*s) {
        while(usart_busy());
        usart_write(*s++);
    }
}

//----- write a string ---------------------------------------------------------
void usart_puts(char *s) {
    while(*s) {
        while(usart_busy());
        usart_write(*s++);
    }
}

//----- write a string ---------------------------------------------------------
void usart_puti(int var) {
    char s[USART_BS];
    itoa(var, s);
    usart_puts(s);
}
