float posX=0;
float posY=0;

float posXX=0;
float posYY=800;

float step=5;

void setup(){
 
  size(800,800);
  background(0);
  stroke(255);
}

void draw(){
 
// only works if posX is inside the screen
if(posX<width){
line(posX,posY,posXX,posYY);
}

// go foward 1 step
posX=posX+step;
//line variation
//on the rigth more variation than o the left
float varr=map(posX,0,width,0,100);
// add variation
posXX=posX+random(-varr,varr);
  
}