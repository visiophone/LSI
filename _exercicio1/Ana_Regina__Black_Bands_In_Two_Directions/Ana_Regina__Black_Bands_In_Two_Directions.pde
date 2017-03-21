

float posX=0; 
float posY=0;
float velX=50;
float velY=50;

float x;
int value=0;


void setup(){
  size(800,800);   
  background(0);
  x=200;
  
}

void draw(){
  
noStroke();
x=x+20;
if (x>width){
  x=10;
}

x=x+40;
if (x>height){
  x=20;
}
fill(random (200), random (200),200);
velY=random(0,15);
posX=posX+velX;
posY=posY+velY;

  println(posX);
  
  rect(800,800,800,800);
  


  
//retangulos de cima

rect(75,75,50,350);
rect(175,75,50,350);
rect(275,75,50,350);
rect(375,75,50,350); 
rect(475,75,50,350);
rect(575,75,50,350);
rect(675,75,50,350);

//retangulos de baixo
rect(75,475,650,50);
rect(75,575,650,50);
rect(75,675,650,50);

//move
fill(random(0),random(0),(0));
rect(mouseX,75, height-mouseX, 400);
rect(mouseY,475, width-mouseY, 650); 

}

void mouseMoved() {
 
  posX= posX+velX;
  if (posX == 0) {
    posX = 255;
  } else {
    posX = 0;
}
}