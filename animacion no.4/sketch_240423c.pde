//Animacion no.4 MAS ANIMADO QUE NUNCA
float angle = 0;

void setup() {
 fullScreen();
  background(255); 
}

void draw() {
}

void keyPressed() {
  if (key == 'x' || key == 'X') { // Generar círculos al presionar la tecla "x" 
    // Generar ciulos aleatoriamente
    float x = random(width); // Posición x aleatoria dentro del lienzo
    float y = random(height); // Posición y aleatoria dentro del lienzo
    float diameter = random(10, 60); // tamaño de los circulos

    // Color aleatorio 
    float r = random(255);
    float g = random(255);
    float b = random(255);
    fill(r, g, b);

    // Dibuja los círculos   en la ubicación y tamaño aleatorios
    noStroke();
    ellipse(x, y, diameter, diameter);
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
  }
}
