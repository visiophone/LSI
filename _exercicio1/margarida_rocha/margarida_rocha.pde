//Posição
int posX = 650;
int posY = 600;
//Velocidade
int velX = 1;
int velY = 1;

void setup() {
 
  size(800, 800); //tamanho do fundo
  background (0, 0, 0); //cor de fundo
  rectMode (CENTER);
  
}

void mouseClicked(){
  background(0,0,0);
}

void draw() {
  
    
  if(posX>width){
  posX=0;
}

if(posX<0){
  posX=0;
}

if(posY>height){
  posY=0;
}

if(posY<0){
  posY=0;
}
  
  //retangulo base: muda de tamanhos e cenas
  noFill ();
  stroke (random (0,232), random (10,28), random(20,300));
  rect (400, 400, posX,posY);
  posX = posX+velX+mouseX;
  posY = posY+velY+mouseY;

  
 // segundo retangulo base: cores epitéticas
  fill (255);
  noStroke();
  rect (400, 400, 580, 530); //580, 530
  
 //retangulo horizontal 1 (baixo)
  noStroke ();
  fill (random (0,232), random (10,28), random(20,300));
  rect (400, 610, 500, 35);
 //retangulo horizontal 2 (meio)
  fill (random (0,232), random (10,28), random(20,300));
  rect (400, 535, 500, 35);
 //retangulo horizontal 3 (cima) 
  fill (random (0,232), random (10,28), random(20,300));
  rect (400, 460, 500, 35);
 
 //retangulo vertical 1
  fill (random (0,232), random (10,28), random(20,300));
  rect (169, 290, 40, 231);
  loop();
  
  //retangulo vertical 2
  fill (random (0,232), random (10,28), random(20,300));
  rect (245, 290, 40, 231);
 //retangulo vertical 3
  fill (random (0,232), random (10,28), random(20,300));
  rect (321, 290, 40, 231);
 //retangulo vertical 4
  fill (random (0,232), random (10,28), random(20,300));
  rect (397, 290, 40, 231);
  //retangulo vertical 5
  fill (random (0,232), random (10,28), random(20,300));
  rect (473, 290, 40, 231);
  //retangulo vertical 6
  fill (random (0,232), random (10,28), random(20,300));
  rect (551, 290, 40, 231);
  //retangulo vertical 7
  fill (random (0,232), random (10,28), random(20,300));
  rect (629, 290, 40, 231);
  
}

void keyPressed(){
  
  saveFrame("frame-processing.jpg");
}