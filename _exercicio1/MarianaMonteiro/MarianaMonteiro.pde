//verticais
float pos1X=150;
float pos1Y=200;

float pos2X=250;
float pos2Y=201;

float pos3X=350;
float pos3Y=202;

float pos4X=450;
float pos4Y=203;

float pos5X=550;
float pos5Y=204;

float pos6X=650;
float pos6Y=205;

//horizontais 
float pos7X=250;
float pos7Y=575;

float pos8X=300;
float pos8Y=675;

//mov. linhas
float vel1Y=(12);
float vel2Y=(10);
float vel3Y=(8);
float vel4Y=(6);
float vel5Y=(4);
float vel6Y=(2);
float vel7X=(20);
float vel8X=(20);

//nº random
int nrRand=0;

float colorr=0;

void setup(){
  size(800,800);
  background(253,247,37);}

void draw(){
//GERAR Nº ALEATORIO
  nrRand=int(random(0,20));
  println(nrRand);
  
//fundo
{rectMode(CENTER);
  noStroke();
  rect(400,400,700,700);
  fill(250);
  


//barras
  {strokeCap(SQUARE);
  strokeWeight(60);
  stroke(mouseX,mouseY);
  
  
  
//barras verticais
  line(150,500,pos1X,pos1Y);
  line(250,100,pos2X,pos2Y);
  line(350,500,pos3X,pos3Y);
  line(450,100,pos4X,pos4Y);
  line(550,500,pos5X,pos5Y); 
  line(650,100,pos6X,pos6Y);


//barras horizontais
  line(pos7X,pos7Y,675,575);
  line(120,675,pos8X,pos8Y);}

//mov vertical
  pos1Y=pos1Y+vel1Y;
  pos2Y=pos2Y+vel2Y;
  pos3Y=pos3Y+vel3Y;
  pos4Y=pos4Y+vel4Y;
  pos5Y=pos5Y+vel5Y;
  pos6Y=pos6Y+vel6Y;

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


//mov horizontal
  pos7X=pos7X+vel7X;
  pos8X=pos8X+vel8X;
  
  if (pos7X<500) vel7X=vel7X+1;
  if (pos7X>500) vel7X=-vel7X;
  
  if (pos8X>400) vel8X=-vel8X;
  if (pos8X<400) vel8X=vel8X+1;
  
}


  
}