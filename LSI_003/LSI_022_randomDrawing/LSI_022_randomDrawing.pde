float posX=800/2; //position
float posY=800/2;

float posXX=800/2; //previous position
float posYY=800/2;

float move=15; // steps to move


void setup(){ 
  size(800,800);
  background(0); 
}

void draw(){ 
 
  float randd = random(8);  // Defining probabilities
  if (randd<2) {posX+=move;};
  if (randd>=2 && randd<4) {posX-=move;};
  if (randd>=4 && randd<6) {posY-=move;};
  if (randd>=6 ) {posY+=move;};
 
  // Checking limits
 if(posX>width) posX=0;
 if(posX<0) posX=width;
 if(posY>height) posY=0;
 if(posY<0) posY=height;
  
  stroke(255);
 
 //Checking distance. It only draw lines, if distance is close
 if(abs(posXX-posX)<200 && abs(posYY-posY)<200 ) line(posXX, posYY, posX, posY);
   
  //updating previous with current position
  posXX=posX;
  posYY=posY;
  
}

void mouseReleased(){
 background(0);  

 
 
 
 }