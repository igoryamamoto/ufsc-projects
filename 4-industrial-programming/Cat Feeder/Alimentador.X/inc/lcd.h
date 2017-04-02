//=====   Character LCD Functions   ============================================

// needs:
// #include "inc/waits.h"
#include <stdlib.h>

// only 4-bit mode
// using bits 4-7 from LCD_DATA (port d)

#define LINE_1          1           // lcd line 1
#define LINE_2          2           // lcd line 2

// ports and bits
#define LCD_RS          PORTEbits.RE2
#define LCD_EN          PORTEbits.RE1
#define LCD_TRIS_RS     TRISEbits.TRISE2
#define LCD_TRIS_EN     TRISEbits.TRISE1
#define LCD_DATA        PORTD
#define LCD_TRIS        TRISD

// lcd signal
#define LCD_STROBE()        ((LCD_EN = 1),(LCD_EN=0))

void lcd_init(void);               // initialize lcd
void lcd_clear(void);              // clear lcd and reset cursor position
void lcd_goto(unsigned char, unsigned char); // set cursor position
                                             // ( position, line )
void lcd_write(unsigned char);     // basic write function
void lcd_put(const rom char *);    // write string from constant
void lcd_puts(char *);             // write string from variable
void lcd_putc(char);               // write single char
void lcd_putBCD(unsigned short);   // write binary coded decimal
void lcd_puti(int);                // write integer

//----- write a constant string of chars to the LCD ----------------------------
void lcd_put(const rom char *s) {
    LCD_RS = 1;
    while(*s)
        lcd_write(*s++);
}

//----- write a string of chars to the LCD -------------------------------------
void lcd_puts(char *s) {
    LCD_RS = 1;
    while(*s)
        lcd_write(*s++);
}

//----- write one character to the LCD -----------------------------------------
void lcd_putc(char c) {
    LCD_RS = 1;
    lcd_write( c );
}

//----- write a Binary Coded Decimal -------------------------------------------
void lcd_putBCD(unsigned short var) {
    LCD_RS = 1;
    lcd_write( ((var >> 4) & 0x0F) + '0' );
    LCD_RS = 1;
    lcd_write( (var & 0x0F) + '0' );
}

//----- write an integer -------------------------------------------------------
void lcd_puti(int var) {
    char s[10];
    itoa(var, s);
    LCD_RS = 1;
    lcd_puts(s);
}

//----- write a byte to the LCD in 4 bit mode ----------------------------------
void lcd_write(unsigned char c) {
    LCD_DATA = (c & 0xF0);
    LCD_STROBE();
    LCD_DATA = (( c << 4 ) & 0xF0);
    LCD_STROBE();
    LCD_DATA = 0;
    WAIT_50US();
}

//----- Go to the specified position on line -----------------------------------
void lcd_goto(unsigned char pos, unsigned char line) {
    LCD_RS = 0;
    if(line == LINE_1) lcd_write( 0x80 + pos );
    else if (line == LINE_2) lcd_write( 0xC0 + pos );
}

//----- Clear and home the LCD -------------------------------------------------
void lcd_clear(void) {
    LCD_RS = 0;
    lcd_write(0x01);
    WAIT_2MS();
}

//----- initialise the LCD into 4 bit mode -------------------------------------
void lcd_init() {
    LCD_TRIS = 0;
    LCD_DATA = 0;
    LCD_TRIS_RS = 0;
    LCD_TRIS_EN = 0;
    LCD_RS = 0;
    LCD_EN = 0;

    lcd_write(0x20); // set interface length, code needs to be writen 2x
    lcd_write(0x20);
    lcd_write(0x28); // set 2 lines
    lcd_write(0x0F); // set display on, cursor on, cursor blink
    lcd_write(0x06); // set entry mode
    lcd_clear();
}
