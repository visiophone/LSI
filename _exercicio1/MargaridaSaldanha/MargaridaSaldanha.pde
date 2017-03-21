float posX=700/2;
float posY=700/2;

float posXX=700/2;
float posYY=700/2;

float move=14; 

void setup(){ 
  size(700,700);
background(255,204,18);

}

void draw(){ 
 
  float randd = random(8); 
  if (randd<2) {posX+=move;};
  if (randd>=2 && randd<4) {posX-=move;};
  if (randd>=4 && randd<6) {posY-=move;};
  if (randd>=6 ) {posY+=move;};
 
  
 if(posX>600) posX=100;
 if(posX<100) posX=600;
 if(posY>700) posY=0;
 if(posY<0) posY=700;
 

  stroke(255,204,18);
  strokeWeight(4);
  rect(350,350,30,30);
  fill(mouseX,mouseY,400);
  
  
int borderStroke = 2;

int twoBS = borderStroke;
fill(255,204,18);
rect(300, 0, 100, height);
stroke(mouseX,mouseY,400);

 
 if(abs(posXX-posX)<100 && abs(posYY-posY)<100 ) line(posXX, posYY, posX, posY);
 
   

  posXX=posX;
  posYY=posY;
 
}

 void mouseReleased(){
   background (255,204,18);
 }
   
 void keyReleased(){
   
   if (key == 's' || key == 'S')
     
   saveFrame("exercicio1_###.jpg");
   
   }
   