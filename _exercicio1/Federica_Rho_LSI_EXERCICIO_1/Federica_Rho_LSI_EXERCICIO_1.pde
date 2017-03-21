PShape square;
float posX=0;
float posY=0;
float posYY=0;
float posXX=0;

void setup() {
  
  size(850, 850);
  background(255);
  square = createShape(RECT, 0, 0, 750, 750);
  square.setFill(color(0, 0, 0));
  stroke(255);
  strokeCap(SQUARE);
  strokeWeight(50);
}

void draw() {
  shape(square, 50, 50);
   
   line(125,125,125,450);
   line(225,125,225,450);
   line(325,125,325,450);
   line(425,125,425,450);
   line(525,125,525,450);
   line(625,125,625,450);
   line(725,125,725,450);
  
   line(100,525,750,525);
   line(100,625,750,625);
   line(100,725,750,725);
}


  
void mousePressed() {
  stroke(random(255), random(255), random(255));
  background(random(255), random(255), random(255));
}
 