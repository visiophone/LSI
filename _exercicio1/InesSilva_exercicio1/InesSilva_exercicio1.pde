float posX=100; //position
float posY=100;

float posXX=700; //previous position
float posYY=700;

float move=50; // steps to move



void setup(){ 
  size(800,800);
  background(255); 

}

void draw(){ 
  float randd = random(10);
 
  if (randd>=2 && randd<4) {posX+=move/4;};
  if (randd>=4 && randd<6) {posX-=move/4;};
  if (randd>=6 && randd<8) {posY-=move;};
  if (randd>=8 && randd<10) {posY+=move;};
  
 if(posX>700) posX=100;
 if(posX<100) posX=700;
 if(posY>700) posY=100;
 if(posY<100) posY=100;
  
stroke(mouseX/2, mouseY/2,150);
 
 //Checking distance. It only draw lines, if distance is close
 if(abs(posXX-posX)<200 && abs(posYY-posY)<200 ) line(posXX, posYY, posX, posY);
   
  //updating previous with current position
  posXX=posX;
  posYY=posY;
}



void mouseReleased(){
 fill(mouseX, mouseY,150);
  rect(100,100,600,600);
   
 }
 void keyReleased(){  

if (key == 's' || key == 'S'){
  
saveFrame("exercício1_###.jpg"); 

}
}