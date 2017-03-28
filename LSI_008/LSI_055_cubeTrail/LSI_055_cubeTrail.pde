float angle = 0.0; // var to change rotation

void setup() {
  size(800, 800);
  rectMode(CENTER);
  background(0);
}

void draw() {
  
 // background(0);
fill(0);
 stroke(255);
  translate(mouseX, mouseY);
  rotate(angle);
  
 rect(0, 0, mouseX, mouseX);
  angle += 0.1;
}