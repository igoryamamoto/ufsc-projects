//=====   MICROCONTROLER CONFIGURATION   =======================================
#include "inc/mcu_config.h"

//=====   INCLUDES   ===========================================================
#include "inc/interrupts.h"
#include "inc/waits.h"
#include "inc/timers.h"
#include "inc/lcd.h"
#include "inc/serial.h"
#include "inc/pwm.h"

//=====   GLOBAL DECLARATIONS   ================================================
long time = 0; // relogio
char mode = 0; // modo manual = 0 ; modo automatico = 1
char portion = 'm';
int freq = 1; // numero de refeicoes por dia (1,2,3 ou 4)
long array_hours[4]; // horarios das refeicoes
char message[USART_BS]; // mensagem do p
void configure(void);
long convert_time(char *);
void gira_motor(char);
char *seg2hour(unsigned int);
void updatelcd(long);

//----- interrupt on int0 ------------------------------------------------------
void int0_isr() {                   // change mode: manual = 0; auto = 1
    mode = !mode;
    lcd_clear();
    if(mode){ // configura os horarios das refeiçoes toda vez que muda p/ auto
        configure();
        WAIT_50MS();
        return;
    }
    else {
        T0CONbits.TMR0ON = 0;
        T3CONbits.TMR3ON = 0;
        lcd_put("Modo Manual");
        WAIT_50MS();
        return;
    }
}

//----- interrupt on timer0 overflow -------------------------------------------
void timer0_isr() { // a cada 1s entra aqui
    PORTBbits.RB7 != PORTBbits.RB7;
    updatelcd(time);
    if(time==86399) time = 0;
    else time += 1;
       
}

//----- interrupt on timer3 overflow -------------------------------------------
void timer3_isr() { // verifica se chegou aproximadamente no horario desejado
    int i;
    for(i=0; i<freq; i++){
        if(time == array_hours[i]) {
            gira_motor(portion);
    }
}
}

//=====   MAIN   ===============================================================
void main() {
    //----- initialization  ----------------------------------------------
    mcu_init();           // basic mcu init
    lcd_init();           // start lcd and show class number
    lcd_put("AUTOFIGI");
    WAIT_1S();
    lcd_clear();
    usart_init();
    pwm1_init();
    pwm2_init();
    isr_init();
    //timer0_init();
    //timer3_init();
    // configura botoes do modo manual
    TRISBbits.RB3 = 1;
    TRISBbits.RB4 = 1;
    TRISBbits.RB5 = 1;
    //PORTB = 1;
    lcd_put("Modo Manual");
    //----- main loop ----------------------------------------------------------
    while(1) {
        if(mode==0){
            if(PORTBbits.RB3==0){
                portion = 'p';
                gira_motor(portion);
            }
            else if(PORTBbits.RB4==0){
                portion = 'm';
                gira_motor(portion);
            }
            else if(PORTBbits.RB5==0){
                portion = 'g';
                gira_motor(portion);
            }
        }

    }
}

void configure(){
/* configura os horarios das refeicoes */
    char help[2];
    int i;
    char freq_c = '2';
    lcd_clear();
    lcd_put("Configuracao:");
    // Beep
    pwm2_set_dc(100);
    WAIT_100MS();
    pwm2_set_dc(0);
    WAIT_100MS();
    pwm2_set_dc(100);
    WAIT_100MS();
    pwm2_set_dc(0);
    WAIT_500MS();
    lcd_clear();
    
    // Primeiro OK no labview
    lcd_put("Waiting...");
    usart_gets(message);
    lcd_clear();
    lcd_put("hora atual:");
    lcd_goto(0,LINE_2);
    lcd_puts(message);
    time = convert_time(message);
    WAIT_1S();
    WAIT_1S();
    lcd_clear();
    
    // Segundo OK no labview
    lcd_put("N refeicoes: ");
    freq_c = usart_getc();
    freq = freq_c - 0x30;
    lcd_puti(freq);
    WAIT_1S();
    lcd_goto(0,LINE_2);
    portion=usart_getc();
    lcd_put("Porcao: ");
    lcd_putc(portion);
    WAIT_1S();
    WAIT_1S();
    lcd_clear();
    lcd_put("Horarios: ");
    for(i=0; i < freq; i++){
        usart_gets(message);
        if(i==0) lcd_clear();
        array_hours[i] = convert_time(message);
        if(i==2) lcd_goto(0,LINE_2);
        lcd_puts(message);
        lcd_put(" ");       
    }
    WAIT_1S();
    WAIT_1S();
    lcd_clear();
    lcd_put("Configured");
    WAIT_1S();
    lcd_clear();
    lcd_put("Modo AUTO");
    timer0_init();
    timer3_init();
    return;
}

long convert_time(char *hour){
/* converte o horario no formato hh:mm para um valor em segundos */
    long converted_hour;
    converted_hour = (hour[0]-0x30)*36000+(hour[1]-0x30)*3600+(hour[3]-0x30)*600+(hour[4]-0x30)*60;
    return converted_hour;
}
void updatelcd(long time){
    long dechour,hour,decmin,min,decseg,seg;
    lcd_clear();
    lcd_goto(4,LINE_2);
    dechour=time/36000;
    time=time-dechour*36000;
    hour=(time)/3600;
    time=time-hour*3600;
    decmin=time/600;
    time=time-decmin*600;
    min=time/60;
    time=time-min*60;
    decseg=time/10;
    time=time-decseg*10;
    seg=time;
    lcd_putc(dechour+0x30);
    lcd_putc(hour+0x30);
    lcd_put(":");
    lcd_putc(decmin+0x30);
    lcd_putc(min+0x30);
    lcd_put(":");
    lcd_putc(decseg+0x30);
    lcd_putc(seg+0x30);
    /*converted_time[0]= dechour+0x30;
    converted_time[1]= hour+0x30;
    converted_time[2]= ':';
    converted_time[3]= decmin+0x30;
    converted_time[4]= min+0x30;
    converted_time[5]= ' ';
    converted_time[6]= decseg+0x30;
    converted_time[7]= seg+0x30;
    */
    return;
}
char *seg2hour(unsigned int time){
/* converte o horario no formato hh:mm para um valor em segundos */
    char converted_time[7];
    unsigned int dechour,hour,decmin,min,decseg,seg;
    dechour=time/36000;
    time=time-dechour*36000;
    hour=(time)/3600;
    time=time-hour*3600;
    decmin=time/600;
    time=time-decmin*600;
    min=time/60;
    time=time-min*60;
    decseg=time/10;
    time=time-decseg*10;
    seg=time;
    converted_time[0]= dechour+0x30;
    converted_time[1]= hour+0x30;
    converted_time[2]= ':';
    converted_time[3]= decmin+0x30;
    converted_time[4]= min+0x30;
    converted_time[5]= ' ';
    converted_time[6]= decseg+0x30;
    converted_time[7]= seg+0x30;
    return converted_time;
}

void gira_motor(char size){
    lcd_clear();
    lcd_put("Hora de comer!");
    // Buzzer
    pwm2_set_dc(100);
    WAIT_100MS();
    pwm2_set_dc(0);
    pwm1_set_dc(125);
    switch(size){
        case 'm':
            WAIT_1S();
            WAIT_1S();
            time = time + 2;
            break;
        case 'g':
            WAIT_1S();
            WAIT_1S();
            WAIT_1S();
            time = time + 3;
            break;
        default:
            WAIT_1S();
            time = time + 1;
    }
    pwm1_set_dc(0);
    return;
}
