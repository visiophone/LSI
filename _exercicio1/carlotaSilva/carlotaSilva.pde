float posicao_inicialx=83, posicao_inicialy=83;
float d=33;
int altura=236;
int flagx=0;
int r1=255,g1=255,b1=255,r2=255,g2=255,b2=255;

float posicao_inicialxh=83, posicao_inicialyh=altura+66+50;
float comprimento=434;
int flagy=0;

int contador=0;
void setup(){
  size (600,600);
  
}

void draw(){
  
   background(255,255,255);
   noStroke();
   fill(0,0,0);
   rect(50, 50, 500, 500);
   

  ///1 
  fill(r1,g1,b1);
  rect(posicao_inicialx, posicao_inicialy, d, altura);
  
    ///2 
 fill(r1,g1,b1);
  rect(posicao_inicialx+d*2, posicao_inicialy, d, altura);
  
   ///3
 fill(r1,g1,b1);
  rect(posicao_inicialx+d*4, posicao_inicialy, d, altura);
  
    ///4
  fill(r1,g1,b1);
  rect(posicao_inicialx+d*6, posicao_inicialy, d, altura);
  
      ///5
  fill(r1,g1,b1);
  rect(posicao_inicialx+d*8, posicao_inicialy, d, altura);
  
      ///6
  fill(r1,g1,b1);
  rect(posicao_inicialx+d*10, posicao_inicialy, d, altura);
  
      ///7
  fill(r1,g1,b1);
  rect(posicao_inicialx+d*12, posicao_inicialy, d, altura);
   
  if(posicao_inicialx == 123){
     flagx=1;
   }
  else if (posicao_inicialx == 50){
     flagx=0;
   }
  
  if(posicao_inicialx < 123 && flagx==0){
    posicao_inicialx=posicao_inicialx+1;
  }
  else if(posicao_inicialx > 50 && flagx == 1){
    posicao_inicialx=posicao_inicialx-1; 
  } 

  //1h
  fill(r2,g2,b2);
  rect(posicao_inicialxh, posicao_inicialyh, comprimento, d);

//2h
  fill(r2,g2,b2);
  rect(posicao_inicialxh, posicao_inicialyh+d*2, comprimento, d);
  
  //3h
 fill(r2,g2,b2);
  rect(posicao_inicialxh, posicao_inicialyh+d*4, comprimento, d);
  
    if(posicao_inicialyh == 550){
     flagy=1;
   }
  else if (posicao_inicialyh == 324){
     flagy=0;
   }
  
  if(posicao_inicialyh < 550 && flagy==0){
    posicao_inicialyh=posicao_inicialyh+1;
  }
  else if(posicao_inicialyh > 324 && flagy == 1){
    posicao_inicialyh=posicao_inicialyh-1; 
  } 
 }
 
 void mouseClicked(){
 if(contador%2==0){
  r1=(int)random(0,255);
  g1=(int)random(0,255);
  b1=(int)random(0,255);
 }
 else{
  r2=(int)random(0,255);
  g2=(int)random(0,255);
  b2=(int)random(0,255);
 }
 contador=contador+1;
 if(contador==10){
  r1=255;
  g1=255;
  b1=255;
  r2=255;
  g2=255;
  b2=255;
  contador=0;
 }
 }