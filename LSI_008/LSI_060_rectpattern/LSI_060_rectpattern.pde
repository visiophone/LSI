float rotattion=0;
float size=500;


float speed=0.0;

void setup(){
  
 size(800,800); 
  rectMode(CENTER);
}


void draw(){
  
  translate (width/2,height/2);
  stroke(255);
  background(0);
  


speed = map(mouseX,0,width,0,0.1);
rotattion+=speed;

size=map(mouseY,0,height,300,600);
  rotate(rotattion);
 
 println(size);
  
  
  
  for(int i=0;i<360;i=i+360/240){
    
    pushMatrix();
    rotate(i);
    fill(i/2);
    rect (0,0,size-i,size-i);
    popMatrix();
    //line(0,0,0,i);
  }

}