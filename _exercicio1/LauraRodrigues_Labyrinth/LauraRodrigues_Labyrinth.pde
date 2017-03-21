import processing.pdf.*;

int posX=0;
int posY=0;

int step=20;

int randd=0;

//triangulo esquerda
float triX=0;
float triY=0;
float triX1=0;
float triY1=300;
float triX2=300;
float triY2=0;

//triangulo direita
float triX3=600;
float triY3=0;
float triX4=600;
float triY4=300;
float triX5=300;
float triY5=0;

//triangulo esquerda baixo
float triX6=0;
float triY6=600;
float triX7=300;
float triY7=600;
float triX8=0;
float triY8=300;

//triangulo direita baixo
float triX9=600;
float triY9=600;
float triX10=600;
float triY10=300;
float triX11=300;
float triY11=600;

//circulo em movimento (dentro)
float circleX=random(300,400);
float circleY=random(300,400);
float ballsize=random(20,60);
float velX=random(-2,2);
float velY=random(-2,2);

//circulo central 
float RoundX=300;
float RoundY=300;
float Roundsize=300;

//linhas cantos
float linX=0;
float linY=0;
float linxx=0;
float linyy=0;

float distance=0;

int col=255;

void setup(){
  beginRecord(PDF,"exercise_maze.pdf"); //começar ficheiro pdf
  colorMode(HSB);
  size(600,600);
  background(255);
  smooth();
   
}

void draw(){
  
    //circulo central
    fill(0);
    noStroke();
    strokeWeight(4);
    ellipse(RoundX,RoundY,Roundsize,Roundsize);
  
   //circulo interior
  fill(57,99,99);
  strokeWeight(1);
  stroke(42,180,177);
  ellipse(circleX,circleY,ballsize,ballsize);
  
  circleX=circleX+velX;
  circleY=circleY+velY;
  
  if(circleX<ballsize/2 || circleX>width-ballsize/2) velX=-velX;
  if(circleY<ballsize/2 || circleY>height-ballsize/2) velY=-velY;
  

 if(dist(circleX,circleY,RoundX,RoundY)>(Roundsize-ballsize)/2){
    velX=-velX;
    velY=-velY;
 }
  
  //corda circulo
  strokeWeight(2);
  line(300,300,circleX,circleY);
  
  //triangulos
  fill(0);
  strokeWeight(1);
  stroke(0);
  triangle(triX,triY,triX1,triY1,triX2,triY2);
  triangle(triX3,triY3,triX4,triY4,triX5,triY5);
  triangle(triX6,triY6,triX7,triY7,triX8,triY8);
  triangle(triX9,triY9,triX10,triY10,triX11,triY11);
  
  //bolas cantos
  fill(random(255),random(255),random(255),mouseY);
  ellipse(80,80,80,80);
  fill(random(255),random(255),random(255),mouseX);
  ellipse(520,80,80,80);
  fill(random(255),random(255),random(255),mouseX);
  ellipse(80,520,80,80);
  fill(random(255),random(255),random(255),mouseY);
  ellipse(520,520,80,80);
  
  //labirinto
 
  strokeWeight(2);
  stroke(0);
  strokeCap(SQUARE);
  translate(300,0);
  rotate(radians(45));
  
 if(posX>width){
 posX=0;
  posY=posY+step;
  }
  
  //linha aleatória
  randd=int(random(3));
 
if(randd==0)line(posX,posY,posX+step,posY+step);
if(randd==1)line(posX,posY+step,posX+step,posY);
if(randd==2)line(posX+step,posY,posX+step,posY);
if(randd==3)line(posX,posY+step,posX,posY+step);

posX=posX+step;

if(posY>height){
 posX=0;
  posX=posX+step;
  }
 }

void mouseClicked(){
stroke(78,99,200); 
background(col,200,255);  
col+=20; 
col%=255; 


circleX=circleX+velX; 
circleY=circleY+velY;
circleX=random(300,400);
circleY=random(300,400);
ballsize=random(20,60);
velX=random(-2,2);
velY=random(-2,2);
RoundX=300; RoundY=300; Roundsize=300;
posX=0;
posY=0;
step=20;
randd=0;
}

void keyPressed(){
  if(key=='s' || key=='S'){
    endRecord();
  }}
  