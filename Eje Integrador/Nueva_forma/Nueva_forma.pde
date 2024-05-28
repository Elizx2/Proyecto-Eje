import processing.serial.*;//Importar serial arduino
import processing.sound.*;//Importar el sonido
Serial puerto;
int bot1;

//Sonidos de las figuras
SoundFile sonido;
SoundFile music;
SoundFile gota;
SoundFile timbre;

void setup() {
  fullScreen();
  background(2, 1, 18); // Fondo oscuro inicial

  noCursor();
  
// Inicializar la comunicación serial con Arduino
  //println(Serial.list());
  String portName = "COM3"; // se cambia la palabra COM3 por el uerto com que designe la computadora
  puerto = new Serial(this, portName, 9600);
  //puerto.bufferUntil('\n');
  
  //Iniciar sonido
  sonido = new SoundFile(this, "data/sapitos.mp3" );
  music = new SoundFile(this, "data/Tubo.mp3");
  gota = new SoundFile(this, "data/gotita.mp3");
  timbre = new SoundFile(this, "data/timbre.mp3");
  music.loop();
}

void draw() {
  
  String mensaje = puerto.readStringUntil('\n');
  if (mensaje != null) {
  mensaje = trim(mensaje);
   
     if (mensaje.equals("taco")) { // Generar círculos al recibir el mensaje "taco" desde Arduino
      float x = random(width);
      float y = random(height);
      float diameter = random(50, 300);
      int randomColor = int(random(3));
      int[] colors = {color(25, 51, 110), color(28, 197, 72), color(233, 32, 25)};
      int circleColor = colors[randomColor];
      
      fill(circleColor);
      
      // Cambia el color del contorno según el color del círculo
      if (circleColor == color(25, 51, 110)) { // Azul
        stroke(255, 116, 0); // Naranja
      } else if (circleColor == color(28, 197, 72)) { // Verde
        stroke(199, 0, 57 ); // Rosa
      } else if (circleColor == color(233, 32, 25)) { // Rojo
        stroke(67, 216, 127); // Verde Clarito
      }

      strokeWeight(8);
      ellipse(x, y, diameter, diameter);
      
     // Definir el color del círculo interior
      int innerCircleColor = color(255); // Blanco por defecto
      if (circleColor == color(25, 51, 110)) { // Azul
        innerCircleColor = color(255, 165, 0); // Naranja
      } else if (circleColor == color(28, 197, 72)) { // Verde
        innerCircleColor = color(128, 0, 128); // Morado
      } else if (circleColor == color(233, 32, 25)) { // Rojo
        innerCircleColor = color(0, 0, 255); // Azul
      }

      // Dibujar un segundo círculo más pequeño en el centro del primero
      float innerDiameter = diameter / 2;
      fill(innerCircleColor); // Color del círculo interior
      noStroke(); // Sin contorno para el círculo interior
      ellipse(x, y, innerDiameter, innerDiameter);
    timbre.play();
    } 
    
    if (mensaje.equals("gato")) { // Generar cuadrados al recibir el mensaje "gato" desde Arduino
    float x = random(width);
    float y = random(height);
    float diameter = random(50, 200);
    int randomColor = int(random(5));
    int[] colors = {color(126, 126, 126), color(136, 136, 136), color(145, 145, 145), color(185, 185, 185), color(222, 222, 222)};
    fill(colors[randomColor]);
    stroke(255);
    rect(x, y, diameter, diameter); 
    gota.play();
    } 
    if (mensaje.equals("pato")) { // Generar líneas al recibir el mensaje "pato" desde Arduino
     float x1 = random(width);
      float y1 = 0;
      float x2 = random(width);
      float y2 = height;
      float cx1 = random(width); // Primer punto de control
      float cy1 = random(height); // Primer punto de control
      float cx2 = random(width); // Segundo punto de control
      float cy2 = random(height); // Segundo punto de control
      int randomColor = int(random(3));
      int[] colors = {color(65, 209, 205), color(207,52,118), color(229, 190, 1)};
      stroke(colors[randomColor]);
      strokeWeight(10);
      noFill(); // Sin relleno para las curvas
      bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2);
    sonido.play();
    }
      if (mensaje.equals("ganso")) { // Limpiar la pantalla al recibir el mensaje "ganso" desde Arduino
      background(2, 1, 18);
    }
     
  }
}
