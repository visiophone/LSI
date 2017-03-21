float posX=random(10,30);
float posY=random(0,15);
float posX2=700;
float posY2=700;
float move=random(5,10);

void setup(){
  size(850,850);
  background(255);
}

void draw(){
  
  fill(0,0,0);
  rect(50,50,750,750);
  
  fill(255,mouseY,mouseY);
 noStroke();
  rect(100,100,50,mouseY*1.6);
  rect(200,100,50,mouseY*1.5);
  rect(300,100,50,mouseY*1.4);
  rect(400,100,50,mouseY*1.3);
  rect(500,100,50,mouseY*1.2);
  rect(600,100,50,mouseY*1.1);
  rect(700,100,50,mouseY*1);
  
 
  rect(750,500,-mouseY*1.1,50);
  rect(750,600,-mouseY*1.25,50);
  rect(750,700,-mouseY*1.5,50);
 
}
void mouseDragged(){
  
  if(posX>width-150) posX=100;
  if(posY>height-150) posY=100;
  
  fill(255,mouseY,mouseY);
  ellipse(posX,posY,100,100);
  posX=posX+move;
  posY=posY+move;
  
}

void keyPressed(){
  if(key=='s'||key=='S')
  saveFrame("save-###.jpg");
  } 