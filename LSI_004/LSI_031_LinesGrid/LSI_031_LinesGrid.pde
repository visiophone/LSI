int posX=0;
int posY=0;

int step=10;

void setup(){
  
  size(800,800);
  background(0);
  strokeCap(SQUARE);
}


void draw(){
  
  stroke(255);
  
  if(posY<height){
  
  if(posX>width){ posX=0; posY=posY+100;}
  
  //
  strokeWeight(random(1,posX/50));
  //random vertical lines
  line(posX, posY,posX, posY+100);
  posX=posX+step;
  
}
  
}