float posX=0;
float posXX=780;
int velX=10;
int cor=0;

////////////////////////////////////
void setup(){
  
  size(1020,960);
  
}///////////////////////////////////
void draw(){
  
  //FUNDO
  noStroke();
  background(255);
  fill(0);
  rect(0,0,width,height/2);
  
  //LINHAS VERTICAIS BRANCAS
  fill(255);
  rect(120,mouseY,60,700);
  rect(240,mouseY,60,700);
  rect(360,mouseY,60,700);
  rect(480,mouseY,60,700);
  rect(600,mouseY,60,700);
  rect(720,mouseY,60,700);
  rect(840,mouseY,60,700);
  
  //LINHAS HORIZONTAIS
            if (cor==0) {
            fill(#5553EA,posX/6);
            rectMode(CENTER);
            rect(width/2,570,posX,60);
            rect(width/2,690,posX,60);
            rect(width/2,810,posX,60);
            fill(#5553EA,posXX/6);
            rect(width/2,570,posXX,60);
            rect(width/2,690,posXX,60);
            rect(width/2,810,posXX,60);
            } //AZUL
            
            if (cor==1) {
            fill(#EADE53,posX/6);
            rectMode(CENTER);
            rect(width/2,570,posX,60);
            rect(width/2,690,posX,60);
            rect(width/2,810,posX,60);
            fill(#EADE53,posXX/6);
            rect(width/2,570,posXX,60);
            rect(width/2,690,posXX,60);
            rect(width/2,810,posXX,60);
            } //AMARELO
            
            if (cor==2) {
            fill(#FAA235,posX/6);
            rectMode(CENTER);
            rect(width/2,570,posX,60);
            rect(width/2,690,posX,60);
            rect(width/2,810,posX,60);
            fill(#FAA235,posXX/6);
            rect(width/2,570,posXX,60);
            rect(width/2,690,posXX,60);
            rect(width/2,810,posXX,60);
            } //LARANJA
            
            if (cor==3) {
            fill(#A65ECE,posX/6);
            rectMode(CENTER);
            rect(width/2,570,posX,60);
            rect(width/2,690,posX,60);
            rect(width/2,810,posX,60);
            fill(#A65ECE,posXX/6);
            rect(width/2,570,posXX,60);
            rect(width/2,690,posXX,60);
            rect(width/2,810,posXX,60);
            } //ROXO
            
            if (cor==4) {
            fill(#F55976,posX/6);
            rectMode(CENTER);
            rect(width/2,570,posX,60);
            rect(width/2,690,posX,60);
            rect(width/2,810,posX,60);
             fill(#F55976,posXX/6);
            rect(width/2,570,posXX,60);
            rect(width/2,690,posXX,60);
            rect(width/2,810,posXX,60);
            } //VERMELHO
            

  //LINHAS VERTICAIS PRETAS
  fill(0);
  rectMode(CORNER);
  rect(120,height/2,60,mouseY-120);
  rect(240,height/2,60,mouseY-120);
  rect(360,height/2,60,mouseY-120);
  rect(480,height/2,60,mouseY-120);
  rect(600,height/2,60,mouseY-120);
  rect(720,height/2,60,mouseY-120);
  rect(840,height/2,60,mouseY-120);
  rect(0,0,width,120);
  fill(255);
  rect(0,840,width,120);
 

  //VELOCIDADE
  posX=posX+velX;
  posXX=posXX-velX;
  if(posX>780) {velX=-velX;}
  if(posX<0) {velX=-velX;}
  
  
}///////////////////////////////////
void keyPressed(){
  
  //RANDOM GENERATORS
  cor=int(random(0,5));
  velX=int(random(7,15));
  
  
}///////////////////////////////////