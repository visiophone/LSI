float posX;
float velX;

void setup (){
  size (800,800);
  background(0);
  posX=width/2;
}
void draw(){    
 //primeiro quadrado preto
  rect(100,100,590,520);
    stroke(10,10,10);
  fill(10,10,10);
  //segundo quadrado branco
  rect(150,150,490,420);
    stroke(10,10,10);
  fill(255);
  
  //retangulos dentro
  //primeiro
rect(180,190,30,170);
stroke(10,10,10);
fill(255);
  //segundo
rect(245,190,30,170);
stroke(10,10,10);
fill(255);
  //terceiro
rect(315,190,30,170);
stroke(10,10,10);
fill(255);
  //quarto
rect(385,190,30,170);
stroke(10,10,10);
fill(255);
 //quinto
rect(450,190,30,170);
stroke(10,10,10);
fill(255);
 //sexto
rect(515,190,30,170);
stroke(10,10,10);
fill(255);
 //sétimo
rect(580,190,30,170);
stroke(10,10,10);
fill(255);

//retangulovertical
//primeiro
rect(180,390,430,30);
stroke(10,10,10);
fill(255);
//segundo
rect(180,455,430,30);
stroke(10,10,10);
fill(255);
//terceiro
rect(180,520,430,30);
stroke(10,10,10);
fill(255);

//PEQUENOSQUADRADOS
  if(mousePressed){
  //primeiro
velX=mouseX/10;
rect(posX,height/10,30,30);
  if(posX>width)
  posX=0;
  {
stroke(10,10,10);
fill(255);
  }
  //segundo
rect(posX,height/5,30,30);
stroke(10,10,10);
fill(255);
//terceiro
rect(posX,height/2,30,30);
stroke(10,10,10);
fill(255);
posX = posX+1;
//quarto
rect(posX,height/3,30,30);
stroke(10,10,10);
fill(255);
//quinto
rect(posX,height/1,30,30);
stroke(10,10,10);
fill(255);

  }
}