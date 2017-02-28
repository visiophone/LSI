float posX=800/2; //position
float posY=800/2;
float posXX=800/2; //previous position
float posYY=800/2;

float move=15; // steps to move

int count=200;

void setup(){ 
  size(800,800);
  background(0); 
  strokeCap(SQUARE);
}

void draw(){ 
 
 if(count>0){ 
  
   int randd = int(random(8));  // Defining probabilities
  
  if (randd==0) {posX=posX+move;strokeWeight(random(1,4));}
  if (randd==1) {posX=posX-move;strokeWeight(random(1,4));}
  if (randd==2) {posY=posY+move;strokeWeight(1);}
  if (randd==3 ) {posY=posY-move;strokeWeight(1);}
  if (randd==4 ) {posX=posX+move; posY=posY+move;strokeWeight(1);}
  if (randd==5 ) {posX=posX+move;posY=posY-move;strokeWeight(1);}
  if (randd==6 ) {posX=posX-move;posY=posY-move;strokeWeight(1);}
  if (randd==7 ) {posX=posX-move;posY=posY+move;strokeWeight(1);}
 
move=random(14,50);

 if(posX>width) posX=posX-move;
 if(posX<0)  posX=posX+move;
 if(posY>height)  posY=posY-move;
 if(posY<0) posY=posY+move;


  stroke(255);
 
 //Checking distance. It only draw lines, if distance is close
 if(dist(posX,posY,posXX,posYY)<100 ) line(posXX, posYY, posX, posY);
   
  //updating previous with current position
  posXX=posX;
  posYY=posY;
  
  println(count);
  count=count-1;
 }
}

void mouseReleased(){
 
  background(0);  
  count=200;

 
 }