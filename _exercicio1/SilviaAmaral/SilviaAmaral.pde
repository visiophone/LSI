//posição
float posX=800/2; 
float posY=800/2;

//posição anterior
float posXX=800/2; 
float posYY=800/2;

//movimentos
float move=2000;

int count=2000;

void setup(){ 
  size(600,650);
  background(0); 
  strokeCap(SQUARE);
}

void draw(){ 
 
 if(count>0){ 
  int randd = int(random(4));  // Probabilidades
  if (randd==0) {
  posX+=move;
  strokeWeight(random(1,2));
}
  if (randd==1) {
  posX-=move;
  strokeWeight(random(1,2));
}
  
 if (randd==2) {
 posY-=move;
 strokeWeight(1);
 }
 
  if (randd==3 ) {
    strokeWeight(1);
  posY+=move;
}
 
move=random(14,90);

  // Limites
 if(posX>width) posX=0;
 if(posX<0) posX=width;
 if(posY>height) posY=0;
 if(posY<0) posY=height;
  
  stroke(22,255,6);
 
//Distância
if(abs(posXX-posX)<200 && abs(posYY-posY)<200 ) line(posXX, posYY, posX, posY);
   
//posição
posXX=posX;
  posYY=posY;
  
  println(count);
  count=count-1;
 }
}

void mouseReleased(){
 background(58,67,57);


 
 
 
 }