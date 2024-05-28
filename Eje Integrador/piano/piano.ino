//lista de ingredientes o variables

int boton1=2;
int boton2=3;
int boton3=4;
int boton4=7;
int led=6;


//preparacion de ingredientes o setup

void setup(){
Serial.begin(9600);
pinMode(boton1,INPUT);
pinMode (boton2,INPUT);
pinMode(boton3,INPUT);
pinMode (boton4,INPUT);
pinMode (led,OUTPUT);
}

//preparacion del sandwich

void loop(){

int b1= digitalRead (boton1);
int b2= digitalRead (boton2);
int b3= digitalRead (boton3);
int b4= digitalRead (boton4);



if (b1==1){
digitalWrite (led,HIGH);
Serial.println("taco");
delay(300);
}

if (b2==1){
digitalWrite (led,HIGH);
Serial.println("gato");
delay(300);
}

if (b3==1){
  digitalWrite (led,HIGH);
  Serial.println("pato");
  delay(300);
}
if (b4==1){
  digitalWrite (led,HIGH);
  Serial.println("ganso");
  delay(300);
}


else {

digitalWrite (led,LOW);

}
}
