float speed=0.005;

void setup(){
  size(800,800);
  rectMode(CENTER);
  //smooth();
}


void draw(){
  
  background(0);
  
stroke(255);

 translate(width/2, height/2); 
  
pushMatrix();
translate(-200, 0); 
rotate(speed);
rect(0,0,200,200);
popMatrix();

pushMatrix();
translate(200, 0); 
rotate(speed*2);
rect(0,0,200,200);
popMatrix();
  

speed=speed+0.05;
  
}