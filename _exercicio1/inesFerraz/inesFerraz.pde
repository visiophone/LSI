//circulos variáveis
float diameter; float angle = 0;float angle2 = 0;float angle3=0;float angle4=0;float angle5=0;float angle6=0;float angle0=0;
 //quadradinho variável
float posX=640;
float posY=480;
float velX=random(-10,10);
float velY=random(-10,10);
float Size = random(10,400);

 //quadradinho variável 2
float posX2=640;
float posY2=480;
float velX2=random(-5,5);
float velY2=random(-5,5);
float Size2 = random(10,400);



void setup(){
size(650,490);
smooth(); 
colorMode(HSB); 
diameter = height - 10;
} 
int col = 0; 
 
void draw(){ 
  background(col,255,255);
//RECTANGULO 1 VERTICAL
noStroke(); fill(#69368E); rect(10,50,30,mouseY+100);
//RECTANGULO 2 VERTICAL
noStroke(); fill(#BD62FF); rect(50,50,30,mouseY+110);
//RECTANGULO 3 VERTICAL
noStroke(); fill(#2CBEFF); rect(90,50,30,mouseY+120);
//RECTANGULO 4 VERTICAL
noStroke(); fill(#2EFF44); rect(130,50,30,mouseY+130);
//RECTANGULO 5 VERTICAL
noStroke(); fill(#EEFF05); rect(170,50,30,mouseY+140);
//RECTANGULO 6 VERTICAL
noStroke(); fill(#FFA02C); rect(210,50,30,mouseY+150);
//RECTANGULO 7 
noStroke(); fill(#FF332C); rect(250,50,30,mouseY+160);

//RECTANGULO 1 VERTICAL
noStroke(); fill(#FF332C); rect(370,50,30,mouseY+170);
//RECTANGULO 2 VERTICAL
noStroke(); fill(#FFA02C); rect(410,50,30,mouseY+160);
//RECTANGULO 3 VERTICAL
noStroke(); fill(#EEFF05); rect(450,50,30,mouseY+150);
//RECTANGULO 4 VERTICAL
noStroke(); fill(#2EFF44); rect(490,50,30,mouseY+140);
//RECTANGULO 5 VERTICAL
noStroke(); fill(#2CBEFF); rect(530,50,30,mouseY+130);
//RECTANGULO 6 VERTICAL
noStroke(); fill(#BD62FF); rect(570,50,30,mouseY+120);
//RECTANGULO 7 
noStroke(); fill(#69368E); rect(610,50,30,mouseY+100);

//RECTANGULO 1 Horizontal
noStroke(); fill(#69368E,500); rect(50,200,mouseX+330,30);
//RECTANGULO 2 Horizontal
noStroke(); fill(#BD62FF,450); rect(50,250,mouseX+330,30);
//RECTANGULO 3 Horizontal
noStroke(); fill(#2CBEFF,400); rect(50,300,mouseX+330,30);
//RECTANGULO 4 Horizontal
noStroke(); fill(#2EFF44,350); rect(50,350,mouseX+330,30);
//RECTANGULO 5 Horizontal
noStroke(); fill(#EEFF05,300); rect(50,400,mouseX+330,30);
//RECTANGULO 6 Horizontal
noStroke(); fill(#FFA02C,250); rect(50,450,mouseX+330,30);
//RECTANGULO 7 Horizontal
noStroke(); fill(#FF332C,200); rect(50,500,mouseX+330,30);

//quadradinho 1 preto
if(posX<(Size/2) || posX > (width-Size/2) ) {velX=-velX;}
if(posY<(Size/2) || posY > (height-Size/2) ) {velY=-velY;}
fill(0);
posX=posX+velX;
posY=posY+velY;
rect(posX,posY,Size,Size);

//quadradinho 2 branco
if(posX2<(Size2/2) || posX2 > (width-Size2/2) ) {velX2=-velX;}
if(posY2<(Size2/2) || posY2 > (height-Size2/2) ) {velY2=-velY2;}
fill(225);
posX2=posX2+velX2;
posY2=posY2+velY2;
rect(posX2,posY2,Size2,Size2);

//circulos
//1
float d0 = 2 + (sin(angle) * diameter/4) + diameter/4; fill(#69368E); noStroke(); ellipse(325,225,d0,d0); angle0 += 0.00;
//2
float d1 = 2 + (sin(angle) * diameter/5) + diameter/5; noStroke(); fill(#BD62FF); ellipse(325, 225, d1, d1); angle += 0.05;
//3
float d2 = 10 + (sin(angle) * diameter/7) + diameter/7; fill(#2CBEFF); noStroke(); ellipse(325, 225, d2, d2); angle2 += 0.09;
//4
float d3 = 10 + (sin(angle) * diameter/9) + diameter/9; fill(#2EFF44); noStroke(); ellipse(325, 225, d3, d3); angle3 += 0.13;
//5
float d4 = 10 + (sin(angle) * diameter/11) + diameter/11; fill(#EEFF05); noStroke(); ellipse(325, 225, d4, d4); angle4 += 0.17;
//6
float d5 = 10 + (sin(angle) * diameter/13) + diameter/13; fill(#FFA02C); noStroke(); ellipse(325, 225, d5, d5); angle5 += 0.21;
//7
float d6 = 10 + (sin(angle) * diameter/15) + diameter/15; fill(#FF332C); noStroke(); ellipse(325, 225, d6, d6); angle6 += 0.26;
}

//Salvar imagem
void keyPressed() {
  if(key=='s'){
  saveFrame("save image.jpg");
  }}
  
  void mouseReleased(){    
velX=random(-10,10);
velY=random(-10,10);

Size = random(10,100);
posX=width/2;
posY=height/2;

Size2 = random(10,100);
posX2=width/2;
posY2=height/2;

}
void mousePressed(){ 
col+=20; 
col%=255; 
println(col); 
} 
  
 