float posX=0;
float posY=0;
float posYY=0;

int step=0;

void setup(){
  
  size(800,800);
  background(0);
  stroke(255);
  strokeCap(SQUARE);
}

void draw(){
 
//random lines size
posY=random(0,800);


//random distance between lines
step=int(random(10,20));
posX=posX+step;

//random lines width
strokeWeight(random(1,5));

if (posX<width){
 
  line(0,width/2,width/2,posY);
  line(width,width/2,width/2,posY);
 // line(posX,400,posX,posYY);
  
  
  
}
}

void mouseReleased(){
// Start Again. Paing Background. PoX is again Zero  
  background(0);  
  posX=0;

 }