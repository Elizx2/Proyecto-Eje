//Animacion no.4 MAS ANIMADO QUE NUNCA

//import processing.serial.*;//Importar la libreria serial
//Serial myPort;  //Crea un objeto de clase serial
//String val;     //Datos recibidos por el Puerto serial

import processing.sound.*;//Importar el sonido
SoundFile sonido;
SoundFile music;
SoundFile gota;
float angle = 0;

void setup() {
  fullScreen();
  background(255);

  noCursor();


  sonido = new SoundFile(this, "data/sapitos.mp3" );
  music = new SoundFile(this, "data/Tubo.mp3");
  gota = new SoundFile(this, "data/gotita.mp3");
  music.play();
}

void draw() {
}

void keyPressed() {
  if (key == 'x' || key == 'X') { // Generar círculos al presionar la tecla "x"
    // Generar ciulos aleatoriamente
    float x = random(width); // Posición x aleatoria dentro del lienzo
    float y = random(height); // Posición y aleatoria dentro del lienzo
    float diameter = random(50, 80); // tamaño de los circulos
    // Color aleatorio
    float r = random(255);
    float g = random(255);
    float b = random(255);
    fill(r, g, b);
   // Dibuja los círculos   en la ubicación y tamaño aleatorios
    noStroke();
    ellipse(x, y, diameter, diameter);
    ///Sonido
    gota.play();
  }
 if (key == 'v' || key == 'v') { // Generar cuadrados al presionar la tecla "v"
    // Generar ciulos aleatoriamente
    float x = random(width); // Posición x aleatoria dentro del lienzo
    float y = random(height); // Posición y aleatoria dentro del lienzo
    float diameter = random(10, 50); // tamaño de los circulos
    // Color aleatorio
    float r = random(255);
    float g = random(255);
    float b = random(255);
    fill(r, g, b);
    // Dibuja los círculos   en la ubicación y tamaño aleatorios
    noStroke();
    rect(x, y, diameter, diameter);
    
    
    // Generar líneas al presionar la tecla "c"
  } else if (key == 'c' || key == 'C') {
    // Genera una línea aleatoria de arriba hacia abajo
    float x1 = random(width); // Posición x aleatoria dentro del lienzo
    float y1 = 0; // Posición y inicial en la parte superior del lienzo
    float x2 = random(width); // Posición x aleatoria dentro del lienzo
    float y2 = height; // Posición y final en la parte inferior del lienzo
    // Color aleatorio para la línea
    float r = random(255);
    float g = random(255);
    float b = random(255);
    strokeWeight(3); // grosor del trazo
    stroke(r, g, b);
    // Dibuja la línea desde arriba hacia abajo
    line(x1, y1, x2, y2);
    //Sonidooo
    sonido.play();
  } else if (key == 'z' || key == 'z') {
    background(255);
  }
}
