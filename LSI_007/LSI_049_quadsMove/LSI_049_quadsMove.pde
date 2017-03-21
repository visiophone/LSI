float moveX=1; // move
float moveY=1; // move
float velX=1; // velocity
float velY=1; // velocity

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
    rect(width/2, height/2, i+moveX, i+moveY); //drawing rect
  }

  velY=mouseY/50; // vel depending on mouseY
  moveY=moveY+velY;
  if (moveY>800) moveY=0;

  velX=mouseX/50; // vel depending on mouseY
  moveX=moveX+velX;
  if (moveX>800) moveX=0;
}