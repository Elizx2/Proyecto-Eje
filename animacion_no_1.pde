//intento de animacion no.1
float angle = 0;
int ellipseTimer = 0;
int ellipseInterval =120;
void setup() {
  size(600, 600);
  background(255);
}
void draw() {
  background(255);

  fill(0, 255, 0);
  for (int i =0; i< 10; i++) {
    float x=random(width);
    float y =random(height);
    float diameter = random(20, 100);
    float speedX = random (-2, 2);
    float speedY = random(-2, 2);
    ellipse (x, y, diameter, diameter);

    x += speedX;
    y += speedY;
  }
  noFill();
  stroke(0);
  strokeWeight(30);
  strokeCap(SQUARE);
    arc(width/2, height/2, 200, 200, radians(angle), radians(angle +90));
  angle += 2;
}
