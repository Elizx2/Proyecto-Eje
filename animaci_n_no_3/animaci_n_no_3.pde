//intento de animacion no.3 me lleva la verdura
float angle = 0;
int ellipseTimer = 0;
int ellipseInterval =30;
int ellipseDuration = 1000;
boolean ellipseVisible = false;
void setup() {
  //size(600, 600);
  frameRate(30);//recuento de frames(es lo que hace a cuanta velocidad corre la animación)
  fullScreen();
}
void draw() {
background(255);
//lo que hace que circulos se generen aleatoriamente en la pantalla
float cr= random(100,255);
  if (frameCount % ellipseInterval== 0 && ellipseTimer<5) {
    noStroke();
    fill(floor(random(0,255)),floor(random(0,255)),floor(random(0,255)));
    float x= random(width);
    float y = random(height);
    float diameter = random(100, 100);

    ellipse (x, y, diameter, diameter);
    ellipseTimer++;
    ellipseVisible = true;
  }
  if (ellipseVisible && frameCount % ellipseInterval == 0) {
    ellipseTimer++;
    if (ellipseTimer >= ellipseDuration / ellipseInterval) {
      ellipseVisible=false;
      ellipseTimer = 0;
    }
  }
//los arcos y circulos
//nota:no encuentro como ponerle color a los arcos y poner más circulos al rededor de la pantalla
  noFill();
  stroke(0);
  strokeWeight(20);
  strokeCap(SQUARE);
  arc(width/2, height/2, 200, 200, radians(angle), radians(angle +90));
  angle += 2;
  fill(255, 0, 0);
  noStroke();
  ellipse( width/2, height/2, 100, 100);

 noFill();
  stroke(0);
  strokeWeight(20);
  strokeCap(SQUARE);
  arc(width/4, height/5, 250, 250, radians(angle), radians(angle +90));
  angle += 2;
  fill(105, 50, 170);
  noStroke();
  ellipse( width/4, height/5, 160, 160);
  
   noFill();
  stroke(0);
  strokeWeight(20);
  strokeCap(SQUARE);
  arc(width/8, height/2, 300, 300, radians(angle), radians(angle +90));
  angle += 2;
  fill(88, 214, 141);
  noStroke();
  ellipse( width/8, height/2, 260, 260);
  
   noFill();
  stroke(0);
  strokeWeight(20);
  strokeCap(SQUARE);
  arc(width/2, height/5, 350, 350, radians(angle), radians(angle +90));
  angle += 2;

  noStroke();
   fill(98, 255, 255);
   ellipse( width/2, height/5, 300, 300);
    fill(255, 62, 120);
  ellipse( width/2, height/5, 200, 200);
}
