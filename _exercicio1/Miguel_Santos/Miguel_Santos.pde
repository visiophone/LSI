
float posX=100;
float posY=600;
float posX1=300;
float posY1=500;
float posX2=100;
float posY2=400;

float velX=0;
float velY=0;

void setup() {
  //screen size
  size(850, 750);
}

void draw() {

//background color
background(255);

//quadrado preto 
fill(0);
rect(50, 50, 750, 650);

//quadrado linha branca simétricas
fill(0,10);
stroke(255);
rectMode(CENTER);
rect(width/2,height/2,mouseX, mouseY); 


//verticais
rectMode(CORNER);
noStroke();
fill(25,mouseY);
rect(100+random(5),100+random(5), 50, 250);
fill(50,mouseY);
rect(200+random(5),100+random(5),50+random(5),250+random(5));
fill(75,mouseY);
rect(300+random(10),100+random(10), 50, 250);
fill(100,mouseY);
rect(400-random(5),100-random(5),50,250);
fill(125,mouseY);
rect(500+random(10),100+random(10), 50, 250);
fill(150,mouseY);
rect(600-random(10),100-random(10),50,250);
fill(175,mouseY);
rect(700+random(5),100+random(5),50,250);



//horizontais

velX=3;
velY=random(-3,3);

posX2=posX2+velX;
posY2=posY2+velY;

if(posX2>width) posX2=-400;
stroke(100, mouseX, mouseY);
fill(mouseX/4,100);
rect(posX2, posY2, 650,50);

posX1=posX1-3;
stroke(mouseX, 200, mouseY);
fill(mouseX/4,200);
rect(posX1, posY1, mouseX,50);
if(posX1<0) posX1=width;

stroke(100, mouseX, mouseY);
fill(mouseX/4,400);
posX=posX+3;
rect(posX, posY, 650 ,50);

if(posX>width) posX=-700;
if (mousePressed == true) {
    background(0);
 
  }
}








// rato 
//void mouseClicked() { 
//fill(255);
  //ellipse(mouseX,mouseY,random(30,100),random(30,100));
//}








// Salvar imagem
void keyPressed(){  
if (key == 's' || key == 'S'){
 saveFrame("save-###.jpg");
}
}