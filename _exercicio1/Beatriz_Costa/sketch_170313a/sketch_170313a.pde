
float posX=20;
float posY=-60;

float posX1=180;
float posY1=-60;

float posX2=340;
float posY2=-60;


float randd=0;

boolean start=false;

void setup () {
  size(480,640);
  background(0);
}

void draw () {
 
 int move=20;
   
  //LINE 0   
  //updating position
  
  randd= random(0,4);
 
  if (randd<1) posY=posY+move;
  if (randd>=1 && randd<2) posY=posY+move*2;
  if (randd>=2 && randd<3) posY=posY+move*3;
  if (randd>=3 && randd<4) posY=posY+move*4;

  
   
  
 //drawing square 
  fill(255, random(36,126), random(36,126));
  noStroke();
  rect(posX,posY,20,20);
  
  
  //checking limits
  if (posX<120 && posY>height)
  {  posX=posX+20;
    posY=-60;}
    
  if (posX>=120 && posY>height) start=true;
  
    
  //LINE 1   
  //updating position
  randd= random(0,4);
  if (randd<1) posY1=posY1+move;
  if (randd>=1 && randd<2) posY1=posY1+move*2;
  if (randd>=2 && randd<3) posY1=posY1+move*3;
  if (randd>=3 && randd<4) posY1=posY1+move*4;
  
  
 //drawing square 
  fill(random(52,126), random(160,200), 255);;
  noStroke();
  rect(posX1,posY1,20,20);
  
  
  //checking limits
  if (posX1<280 && posY1>height)
  {   posX1=posX1+20;
      posY1=-60;}
    
   if (posX1>=280 && posY1>height) start=true;
 
 //LINE 2   
  //updating position
  randd= random(0,4);
  if (randd<1) posY2=posY2+move;
  if (randd>=1 && randd<2) posY2=posY2+move*2;
  if (randd>=2 && randd<3) posY2=posY2+move*3;
  if (randd>=3 && randd<4) posY2=posY2+move*4;
  
  
 //drawing square 
  fill(random(100,160),random(200,250), 24);
  noStroke();
  rect(posX2,posY2,20,20);
  
  
  //checking limits
  if (posX2<440 && posY2>height)
  {  posX2=posX2+20;
    posY2=-60;}

  if (posX2>=440 && posY2>height) start=true;

//START 
  if (start==true) {    
    background(0);
    
    posX=20;
    posY=-60;

    posX1=180;
    posY1=-60;

    posX2=340;
    posY2=-60; 
    

    start=false; //Ending START condition. 
  }
 
}

  
void keyReleased() {  

  if (key == 'p' || key == 'P') { 
    saveFrame("save-###.jpg");

 }
}