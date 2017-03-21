//BARRAS VERTICAIS
float pos1X=100;
float pos1Y=150;

float pos2X=200;
float pos2Y=151;

float pos3X=300;
float pos3Y=152;

float pos4X=400;
float pos4Y=153;

float pos5X=500;
float pos5Y=154;

float pos6X=600;
float pos6Y=155;

float pos9X=700;
float pos9Y=156;

//BARRAS HORIZONTAIS 
float pos7X=150;
float pos7Y=550;

float pos8X=650;
float pos8Y=625;

float pos10X=150;
float pos10Y=700;

//MOVIMENTO DAS BARRAS VERTICAIS
float vel1Y=random(5,10);
float vel2Y=random(5,10);
float vel3Y=random(5,10);
float vel4Y=random(5,10);
float vel5Y=random(5,10);
float vel6Y=random(5,10);
float vel9Y=random(5,10);

//MOVIMENTO DAS BARRAS HORIZONTAIS
float vel7X=12;
float vel8X=14;
float vel10X=13;


int nrRand=0;

float colorr=0;

void setup(){
  colorr=255;
  size(800,800);
  background(colorr);}


void draw(){
  nrRand=int(random(0,8));
  println(nrRand);
 
 
//FUNDO PRETO
{rectMode(CENTER);
  noStroke();
  rect(400,400,750,750);
  fill(0);
  
  if (mousePressed)
  fill(255);


//BARRAS
  {strokeCap(SQUARE);
  strokeWeight(50);
  stroke(200,mouseX,255);
  
  
//BARRAS VERTICAIS 
  line(100,75,pos1X,pos1Y);
  line(200,75,pos2X,pos2Y);
  line(300,75,pos3X,pos3Y);
  line(400,75,pos4X,pos4Y);
  line(500,75,pos5X,pos5Y); 
  line(600,75,pos6X,pos6Y);
  line(700,75,pos9X,pos9Y);

//BARRAS HORIZONTAIS
  line(pos7X,pos7Y,725,550);
  line(75,625,pos8X,pos8Y);
  line(pos10X,pos10Y,725,700);}
  

//MOVIMENTO DAS BARRAS VERTICAIS
  pos1Y=pos1Y+vel1Y;
  pos2Y=pos2Y+vel2Y;
  pos3Y=pos3Y+vel3Y;
  pos4Y=pos4Y+vel4Y;
  pos5Y=pos5Y+vel5Y;
  pos6Y=pos6Y+vel6Y;
  pos9Y=pos9Y+vel9Y;

  if (pos1Y>500) vel1Y=-vel1Y;
  if (pos1Y<250) vel1Y=vel1Y+1;

  if (pos2Y>500) vel2Y=-vel2Y;
  if (pos2Y<250) vel2Y=vel2Y+1;

  if (pos3Y>500) vel3Y=-vel3Y;
  if (pos3Y<250) vel3Y=vel3Y+1;

  if (pos4Y>500) vel4Y=-vel4Y;
  if (pos4Y<250) vel4Y=vel4Y+1;

  if (pos5Y>500) vel5Y=-vel5Y;
  if (pos5Y<250) vel5Y=vel5Y+1;

  if (pos6Y>500) vel6Y=-vel6Y;
  if (pos6Y<250) vel6Y=vel6Y+1;
  
  if (pos9Y>500) vel9Y=-vel9Y;
  if (pos9Y<250) vel9Y=vel9Y+1;


//MOVIMENTO DAS BARRAS HORIZONTAIS
  pos7X=pos7X+vel7X;
  pos8X=pos8X+vel8X;
  pos10X=pos10X+vel10X;
  
  if (pos7X<210) vel7X=vel7X+1;
  if (pos7X>625) vel7X=-vel7X;
  
  if (pos8X>660) vel8X=-vel8X;
  if (pos8X<260) vel8X=vel8X+1;
  
  if (pos10X<210) vel10X=vel10X+1;
  if (pos10X>625) vel10X=-vel10X;
  
}
}