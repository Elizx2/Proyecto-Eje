//intento de animacion no.2 me lleva la verdura
float angle = 0;
int ellipseTimer = 0;
int ellipseInterval =300;
int ellipseDuration = 600;
boolean ellipseVisible = false;


void setup() {
  //size(600, 600);
  frameRate(20);
  fullScreen();
}
void draw() {
  int m =millis();
if(m < 5000){
  background(255);
}
else if (m < 10000){
  background(255);}

float cr = random(100,255);
  if (frameCount % ellipseInterval== 0 && ellipseTimer<5) {
    noStroke();
    fill(cr, cr, 0);
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
}
