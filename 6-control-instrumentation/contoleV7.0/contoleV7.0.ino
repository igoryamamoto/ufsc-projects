const int redPin = 9;
const int greenPin = 10;
const int bluePin = 11;
const int sensorPin = A5;
const int pwmPin = 5;
const int sw = 2;
const int posRef = 80;
//const int posBase = 75;
const int posMax = 73;
int pos, pos1;
//int ini = 1;
int e0;
//int e1;
int kc = 19; 
   
void setup(){  
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT); 
  //pinMode(pwmPin, OUTPUT); 
  pinMode(sensorPin, INPUT);
  pinMode(sw, INPUT);
  Serial.begin(115200);
  analogWrite(pwmPin, 0);
  setColor(0,0,255);
  pos = 1000;
  pos1 = pos;
  e0 = 0;
  //e1 = 0;
}  
   
void loop(){  
  if(digitalRead(sw)){ 
      if(Serial.available()>0){ 
        //pos1 = pos;
        pos = Serial.read();
        //if(pos - pos1 > 10) pos = pos1;  
        control(pos);
      }
      
  }
  else{
    analogWrite(pwmPin, 0);
    setColor(0,0,255);
  }
}

void control(int pos){
    int u;
    //e1 = e0;
    e0 = posRef - pos;
    if(pos <= posMax){
      setColor(255,0,0);
      analogWrite(pwmPin,0);        
    }
    else{
      //u = map(pos,posMax,posRef,0,255);
      u = kc*e0;
      if(u>255) u = 255;
      else if(u<0) u = 0;   
      setColor(0,255,0);
      analogWrite(pwmPin, u);
      //Serial.println(u);
    }
}
void setColor(int red, int green, int blue)
{
  analogWrite(redPin, red);
  analogWrite(greenPin, green);
  analogWrite(bluePin, blue);  
}
