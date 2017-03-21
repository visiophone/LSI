//verticais
float posX=35;
float posY=66;
float sizeX=35;
float sizeY=275;
float velX=random(-5,5);

//horizontais
float posXX=70;
float posYY= 375;
float sizeXX=455;
float sizeYY=35;

//movimentado
float posA=400;
float posB=400;
float sizeA=30;
float velA=random(-5,5);
float velB=random(-5,5);

 
void setup(){
   noStroke();
   background (0);
   size(600,625);
   
 }
  
  void draw (){
  
    //movimentado
 posA=posA+velA;
  posB=posB+velB;
 
  stroke(255);
  line(0,0,posA,posB);
  
   stroke(255);
  line(625,625,posA,posB);
  
  stroke(255);
  line(0,600,posA,posB);
  
   stroke(255);
  line(600,0,posA,posB);
  
  
//tocar para voltar para trás

if(posA<00 || posA>width) velA=-velA;
if(posB<00 || posB>height) velB=-velB;
  
  
  
    //base
    noStroke();
    fill(166,232,207,50);
  rect(35,35,535,555);
  
  
   //verticais
  fill(mouseX,mouseY,106);
  rect(posX+35,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+105,posY, sizeX, sizeY);
  
  fill(mouseX,mouseY,106);
  rect(posX+175,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+245,posY, sizeX, sizeY);
  
  fill(mouseX,mouseY,106);
  rect(posX+315,posY, sizeX, mouseY); //linha que aumenta para baixo
  
   fill(mouseX,mouseY,106);
  rect(posX+385,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+455,posY, sizeX, sizeY);
  
  //horizontais
  fill(mouseX,mouseY,235);
  rect(posXX,posYY, sizeXX, sizeYY);
  
    fill(mouseX,mouseY,235);
  rect(posXX,posYY+70, mouseX, sizeYY);  //linha que aumenta para o lado
  
    fill(mouseX,mouseY,235);
  rect(posXX,posYY + 140, sizeXX, sizeYY);
  
  

  
 }
 void keyPressed(){
  if (key == 's' || key=='S'){
    saveFrame("save-###.jpg"); 
  }}
  
void mouseClicked(){
  background(0);

  
  fill(mouseX,mouseY,106);
  rect(posX+35,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+105,posY, sizeX, sizeY);
  
  fill(mouseX,mouseY,106);
  rect(posX+175,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+245,posY, sizeX, sizeY);
  
  fill(mouseX,mouseY,106);
  rect(posX+315,posY, sizeX, mouseY); //linha que aumenta para baixo
  
   fill(mouseX,mouseY,106);
  rect(posX+385,posY, sizeX, sizeY);
  
   fill(mouseX,mouseY,106);
  rect(posX+455,posY, sizeX, sizeY);
  
  //horizontais
  fill(mouseX,mouseY,235);
  rect(posXX,posYY, sizeXX, sizeYY);
  
    fill(mouseX,mouseY,235);
  rect(posXX,posYY+70, mouseX, sizeYY);  //linha que aumenta para o lado
  
    fill(mouseX,mouseY,235);
  rect(posXX,posYY + 140, sizeXX, sizeYY);
  
  //movimentado
  posA=random(0,100);
  posB=random (500,600);
 
  
  
//tocar para voltar para trás


if(posA<00 || posA>width) velA=-velA;
if(posB<00 || posB>height) velB=-velB;
  
}