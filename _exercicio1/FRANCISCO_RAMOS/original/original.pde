void setup(){
  
  size(1020,960);
  
}///////////////////////////////////
void draw(){
  
  //FUNDO
  noStroke();
  background(255);
  fill(0);
  rectMode(CENTER);
  rect(width/2,height/2,900,840);
  
  //LINHAS VERTICAIS
  fill(255);
  rectMode(CORNER);
  rect(120,120,60,360);
  rect(240,120,60,360);
  rect(360,120,60,360);
  rect(480,120,60,360);
  rect(600,120,60,360);
  rect(720,120,60,360);
  rect(840,120,60,360);
  
  //LINHAS HORIZONTAIS
  rect(120,540,780,60);
  rect(120,660,780,60);
  rect(120,780,780,60);
  
}///////////////////////////////////