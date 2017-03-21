float posX=20; //position
float posY=0;

float posXX=20; //previous position
float posYY=550;



float posX2=160; //position
float posY2=0;

float posXX2=160; //previous position
float posYY2=550;

float posX3=300;
float posY3=0;

float posXX3=300;
float posYY3=550;


float move=20; // steps to move

int count=3000;

void setup(){ 
  size(420,550);
  background(0); 
  
}

void draw(){ 
 
noStroke();

 if(count>0){ 
  int randd = int(random(8));
  if (randd==0) {
      posX+=move;
  posX2+=move;
   posX3+=move;
  rect(posX+move, posY+move,20,20);
  rect(posX2-move, posY2-move,20,20);
    rect(posX3+move, posY3-move,20,20);
  fill(255);
 
}
  if (randd==1) {
  posX-=move;
  posX2-=move;
   posX3-=move;
    rect(posX-move, posY-move,20,20);
    rect(posX2+move, posY2+move,20,20);
      rect(posX3-move, posY3+move,20,20);
  fill(255);

}
  
 if (randd==2) {
 posY-=move;
  posY2-=move;
    posY3-=move;
   rect(posX-move, posY+move,20,20);
   rect(posX2+move, posY2-move,20,20);
     rect(posX3-move, posY3-move,20,20);
     fill(255);
 
 }
 
  if (randd==3 ) {
 
  posY+=move;
   posY2+=move;
    posY3+=move;
    rect(posX+move, posY-move,20,20);
    rect(posX2-move, posY2+move,20,20);
      rect(posX3+move, posY3+move,20,20);
    fill(255);
}

if (randd==4) {    rect(posX+move, posY+move,20,20); rect(posX2-move, posY2-move,20,20); rect(posX3-move, posY3+move,20,20); fill(0);}
if (randd==5) {    rect(posX-move, posY-move,20,20); rect(posX2+move, posY2+move,20,20); rect(posX3+move, posY3-move,20,20); fill(0);}
if (randd==6) {    rect(posX-move, posY+move,20,20); rect(posX2+move, posY2-move,20,20); rect(posX3+move, posY3+move,20,20); fill(0);}
if (randd==7) {    rect(posX+move, posY-move,20,20); rect(posX2-move, posY2+move,20,20); rect(posX3-move, posY3-move,20,20);fill(0);}

 
move=20;
  // Checking limits
 if(posX+move>60 || posX-move>60) posX=40;
 if(posX+move<40 || posX-move<40) posX=60;
 if(posY+move>550 || posY-move>550) posY=0;
 if(posY+move<20 || posY-move<20) posY=540;
  
  if(posX2+move>220 || posX2-move>220) posX2=160;
 if(posX2+move<160 || posX2-move<160) posX2=220;
 if(posY2+move>550 || posY2-move>550) posY2=0;
 if(posY2+move<30 || posY2-move<30) posY2=540;

  if(posX3+move>340 || posX3-move>340) posX3=300;
 if(posX3+move<320 || posX3-move<320) posX3=340;
 if(posY3+move>550 || posY3-move>550) posY3=0;
 if(posY3+move<30 || posY3-move<30) posY3=540;
 
 
  
  
 


  posXX=posX;
  posYY=posY;
  
  posXX2=posX2;
  posYY2=posY2;
  
   posXX3=posX3;
  posYY3=posY3;
  
  
  println(count);
  count=count-1;
 } }
 
  void keyReleased(){
  if (key == 's' || key == 'S'){
  saveFrame("save###.jpg"); //de cada vez que carrego no s isto grava o frame
  }
  }
  
  void mouseClicked() {
  //começa de novo
  background(0);
  posX=20;
  posX2=160;
  posX3=300;
  posY=0;
  posY2=0;
  posY3=0;
  }
  
  void mouseDragged(){
  background(0,mouseX, mouseY,3);}