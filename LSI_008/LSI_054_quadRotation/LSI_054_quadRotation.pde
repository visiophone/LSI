float angle = 0.0; // var to change rotation

void setup() {
  size(800, 800);
  rectMode(CENTER);
  background(0);
}

void draw() {
  
  background(0);
  translate(width/2, height/2);
  rotate(angle);
  
 rect(0, 0, mouseX, mouseX);
  angle += 0.1;
}