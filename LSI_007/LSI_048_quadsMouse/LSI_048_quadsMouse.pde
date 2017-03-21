void setup() {
  size(800, 800); 
  rectMode(CENTER);
}


void draw() {

  background(0);
  stroke(255);
  noFill();

  // drawing rect
  for (int i=0; i<width; i=i+20) {
    stroke(i/3, mouseY/4, mouseX/4);   //color depending on y and x  
    rect(width/2, height/2, i+mouseX, i+mouseY); //drawing rect
  }
}