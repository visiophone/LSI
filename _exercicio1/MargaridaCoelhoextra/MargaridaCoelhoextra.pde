float posX=400;
float posY=400;
float posXX=400;
float posYY=400;
float velX=20;
float velY=20;

float posX2=400;
float posY2=400;
float posXX2=400;
float posYY2=400;
float velX2=20;
float velY2=20;
int counter=0;

float randd=0;
float randd2=0;


void setup (){
  size(800,800);
  background(255);
  
}
void draw (){
  if(counter<400){
    
  randd=random(0,60);
  if(randd<20) posY=posY+velY;
  if(randd>=20 && randd<30) posX=posX+velX;
  if(randd>=30 && randd<50) posY=posY-velY;
  if(randd>=50) posX=posX-velX;
  strokeWeight(random(1,3));
  stroke (0,posX/3,posY/3);
  
  if (dist(posX,posY,posXX,posYY)<200){
  line(posX,posY,posXX,posYY);}
  
  posXX=posX;
  posYY=posY;
  
  if (posX<100) posX=width-100;
  if (posX>width-100) posX=0;
  if (posY<100) posY=height-100;
  if(posY>height-100) posY=0;
  
  randd2=random(0,60);
  if(randd2<20) posY2=posY2+velY2;
  if(randd2>=20 && randd2<30) posX2= posX2+velX2;
  if(randd2>=30 && randd2<50) posY2=posY2-velY2;
  if(randd2>=50) posX2=posX2-velX2;
  
  if (dist(posX2,posY2,posXX2,posYY2)<200){
  line(posX2,posY2,posXX2,posYY2);}
  
  posXX2=posX2;
  posYY2=posY2;
 
  if (posX2<100) posX2=width-100;
  if (posX2>width-100) posX2=0;
  if (posY2<100) posY2=height-100;
  if(posY2>height-100) posY2=0;
  }    
}


void mouseReleased(){ 
  counter=0;
  posX=400;
  posXX=400;
  posY=400;
  posYY=400;
  posX2=400;
  posXX2=400;
  posY2=400;
  posYY2=400;
  
 }
 
 void keyReleased() {  
  if (key == 's' || key == 'S') { 
    saveFrame("labyrinth-###.jpg");
    }
    if (key == 'B' || key == 'b') { 
    background(255);
  }
  
  }