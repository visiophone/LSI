float angle = 0;


void setup() {
  size(800,800);
  background(0);
  smooth();
 // noStroke();
}
void draw() {
  translate(width/2, height/2);
  fill(random(angle));
  stroke(255);
  rotate(angle);
  float circle_size = random(angle, angle+5);
  // ellipse(0 + r, 10, circle_size, circle_size);
  ellipse(angle + angle, 10, angle, angle);
  angle = angle + 0.2;
 
 if (angle>400) {
   angle=0;

 }
}