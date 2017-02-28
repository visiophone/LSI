float posX=800/2; //position
float posY=800/2;

float posXX=800/2; //previous position
float posYY=800/2;

float move=15; // steps to move

int count=150;

void setup(){ 
  size(800,800);
  background(0); 
  strokeCap(SQUARE);
}

void draw(){ 
 
 if(count>0){ 
  int randd = int(random(4));  // Defining probabilities
  if (randd==0) {
  posX+=move;
  strokeWeight(random(1,4));
}
  if (randd==1) {
  posX-=move;
  strokeWeight(random(1,4));
}
  
 if (randd==2) {
 posY-=move;
 strokeWeight(1);
 }
 
  if (randd==3 ) {
    strokeWeight(1);
  posY+=move;
}
 
move=random(14,50);
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
  
  println(count);
  count=count-1;
 }
}

void mouseReleased(){
 background(0);  

 
 
 
 }