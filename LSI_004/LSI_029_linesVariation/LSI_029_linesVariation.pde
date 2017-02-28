float posX=0;
float posY=0;

int step=2;

void setup(){
  
  size(800,800);
  background(255);
}

void draw(){
 
 int rand = int(random(2));
 println(rand);
  
posY=random(0,400);
 
if(rand==0) posY=posY;
if(rand==1) posY=posY+400;
  
if (posY<width){
 
  line(posX,400,posX,posY);
  posX=posX+step;
  
}
}