
#include <avr/interrupt.h>
#include "pitches.h"

const byte TONE_PIN = 6;
const byte ECHO_PIN = 12;  // Arduino pin tied to echo pin on the ultrasonic sensor.
const byte TRIGGER_PIN = 11;  // Arduino pin tied to trigger pin on the ultrasonic sensor.
const byte LED_PISCA = 10;
const byte LED_ON  = 9;
const unsigned int CLK_TIMER = 15625;
const float MIN_FREQ = 1;
const float MAX_FREQ = 5000;
int max_distance = 20; // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.
boolean on = LOW;
boolean activeconfig = HIGH;
int beep = NOTE_C5;
unsigned int top = 15625;
void sing(boolean turnoff);
void configSerial();
void configInt0();
void configInt1();
void configTimer1();
void configpersonal();
void buzz(int targetPin, long frequency, long len);
float dist_measure();

void setup() {
  configSerial();
  pinMode(TRIGGER_PIN,OUTPUT);
  pinMode(ECHO_PIN,INPUT);
  pinMode(LED_ON, OUTPUT);
  pinMode(LED_PISCA, OUTPUT);
  pinMode(TONE_PIN, OUTPUT);
  sei();
  configInt0();
  configInt1();
  configTimer1();
  configpersonal();
}

void loop() {
  if(activeconfig) configpersonal();
  digitalWrite(LED_ON, on);
  delay(50);
  if (on) {
    EIMSK &= (0xFF ^ (1 << INT1)); // desabilita a interrupcao 1
    float dist = dist_measure();
    if (dist != -1) {
      TIMSK1 = (1 << OCIE1A);
      switch(max_distance){
        case 20:
          top = CLK_TIMER/(-12.9843*log(0.0462937*dist));
          break;
        case 30:
          top = CLK_TIMER/(-12.9843*log(0.0308625*dist));
          break;
        case 40:
          top = CLK_TIMER/(-12.9843*log(0.0231469*dist));
          break;
        default:
          top = CLK_TIMER*(1/MAX_FREQ) + (CLK_TIMER*(1/MIN_FREQ - 1/MAX_FREQ)*dist)/max_distance;
          break;  
      }
      if (top > 65535) top = 65535;
    }
    else{
      TIMSK1 = (0 << OCIE1A); // desliga o timer com o buzzer
    }
    Serial.println(dist);
  }
  
  else{
    TIMSK1 = (0 << OCIE1A); // desliga o timer com o buzzer
    EIMSK |= (1 << INT1);
  }

}

//------------------------------------------------------------------------------------------------------//

void configSerial(){
  PRR = 0; // Sair do modo de baixo consumo
  UBRR0 = 103;
  UCSR0A = 0;
  UCSR0B = (1 << TXEN0) | (1 << RXEN0);
  UCSR0C = (1 << UCSZ01) | (1 << UCSZ00); // 8 bits, sem paridade
}

void configInt0() {
  EICRA = (1 << ISC01); // Registrador de configuracao do modo FALLING
  EIMSK = (1 << INT0); // Mascara de habilitacao individual de interrupcoes externas
}
void configInt1() {
  EICRA |= (1 << ISC11); // Registrador de configura��o do modo FALLING
  EIMSK |= (1 << INT1); // M�scara de habilita��o individual de interrup��es externas
}

void configTimer1() {
  TCCR1A = 0; // Limpa TCCR1A
  TCCR1B = (1 << CS12) | (1 << CS10) | (1 << WGM12); // Prescaler divide por 64 f_clk = 16 MHz/256 = 250 kHz
                                                     // Modo CTC (Clear Timer on Compare)
  TIMSK1 = (0 << OCIE1A); // desabilita interrup��o comparacao timer 1
  OCR1A = top;
}

ISR(INT0_vect) { //Tratador da INT0 
  on = !on;
  digitalWrite(LED_ON, on);
  if(!on){
    Serial.println("Desligando...");
    sing(HIGH);
  }
  else{
    Serial.println("Bem-vindo ao seu assistente de direcao!");
    sing(LOW);
  }
}

ISR(INT1_vect) { //Tratador da INT1
  while(!( UCSR0A & (1<<UDRE0) ) );
  activeconfig = HIGH;
}

ISR(TIMER1_COMPA_vect) { // Timer interrupt vector.
  TCCR1B = (0 << CS12) | (0 << CS11) | (0 << CS10);
  buzz(TONE_PIN, beep, 100);
  OCR1A = top ;
  TCCR1B = (1 << CS12) | (1 << CS10) | (1 << WGM12);
}

float dist_measure(){
  float duration, distance;
  /* The following trigPin/echoPin cycle is used to determine the
  distance of the nearest object by bouncing soundwaves off of it. */ 
  digitalWrite(TRIGGER_PIN, LOW); 
  delayMicroseconds(2); 
  
  digitalWrite(TRIGGER_PIN, HIGH);
  delayMicroseconds(10); 
  
  digitalWrite(TRIGGER_PIN, LOW);
  duration = pulseIn(ECHO_PIN, HIGH);
  
  //Calculate the distance (in cm) based on the speed of sound.
  distance = duration/58.2;
  if (2<= distance && distance <= max_distance){ //a mediçao minima do sensor é 2cm e a maxima é determinada pelo usuario
    return distance;
  }
  else{
    return -1; 
  }
}

void configpersonal() {
  const char espaco[] = " ";
  Serial.println(">> Configuracoes do sistema");
  Serial.println("Escolha o nivel de instrucao do condutor do veiculo: ");
  Serial.println("1.   Iniciante ");
  Serial.println("2.   Intermediario ");
  Serial.println("3.   Profissional ");
  while (!( UCSR0A & (1 << RXC0) ) ); //espera ate que o usuario digite algo
  char ctrlUser = UDR0; //atribui o que foi digitado a ctrlUser
  switch (ctrlUser) {
    case '1':
      max_distance = 40;
      beep = NOTE_D6;
      break;
    case '2':
      max_distance = 30;
      beep = NOTE_D5;
      break;
    case '3':
      max_distance = 20;
      beep = NOTE_D4;
      break;
  }
  Serial.println(ctrlUser);
  Serial.print("Distancia limite: ");
  Serial.print(max_distance);
  Serial.println(" cm");
  activeconfig = LOW;
}

void buzz(int targetPin, long frequency, long len) {
  digitalWrite(LED_PISCA,HIGH);
  long delayValue = 1000000/frequency/2; // calculate the delay value between transitions
  //// 1 second's worth of microseconds, divided by the frequency, then split in half since
  //// there are two phases to each cycle
  long numCycles = frequency * len/ 1000; // calculate the number of cycles for proper timing
  //// multiply frequency, which is really cycles per second, by the number of seconds to 
  //// get the total number of cycles to produce
  for (long i=0; i < numCycles; i++){ // for the calculated length of time...
    digitalWrite(targetPin,HIGH); // write the buzzer pin high to push out the diaphram
    delayMicroseconds(delayValue); // wait for the calculated delay value
    digitalWrite(targetPin,LOW); // write the buzzer pin low to pull back the diaphram
    delayMicroseconds(delayValue); // wait again or the calculated delay value
  }
  digitalWrite(LED_PISCA,LOW);
}

void sing(boolean turnoff){
  int melody[] = {NOTE_E5, 0, NOTE_C5, NOTE_D6};
  if(turnoff){
    melody[3] = NOTE_D4;
  }
 int size = sizeof(melody) / sizeof(int);
 for (int thisNote = 0; thisNote < size; thisNote++) {
   // to calculate the note duration, take one second
   // divided by the note type.
   //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
   int noteDuration = 1000/8;
   buzz(TONE_PIN, melody[thisNote],noteDuration);
   // to distinguish the notes, set a minimum time between them.
   // the note's duration + 30% seems to work well:
   int pauseBetweenNotes = noteDuration * 1.30;
   delay(pauseBetweenNotes);
   // stop the tone playing:
   buzz(TONE_PIN, 0,noteDuration);
  }
}
