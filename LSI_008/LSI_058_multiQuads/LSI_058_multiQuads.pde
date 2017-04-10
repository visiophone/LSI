float angle=0.005;

void setup(){
  size(800,800);
  rectMode(CENTER);
  //smooth();
}


void draw(){
  
  background(0);
  
stroke(255);
  
  for(int i=0; i<width;i=i+150){

    pushMatrix();
    pushMatrix();
    translate(i, height/2);
      
   
    rotate(angle+i);
    rect(0,0,100,100);
    
     popMatrix();
    popMatrix();
    
    
  }
  
  angle=angle+0.05;
  
}