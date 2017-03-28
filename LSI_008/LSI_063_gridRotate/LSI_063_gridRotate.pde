float angle=0.005;

void setup() {
  size(800, 800);
   rectMode(CENTER);
}


void draw() {

  
  background(0);
  
  
  for (int i = 80; i < width; i=i+80) {
    for (int j = 80; j < height; j=j+80) { 

          pushMatrix();
    pushMatrix();
    translate(i, j);
      
   
    rotate(angle+i+j);
    rect(0,0,100,100);
    
     popMatrix();
    popMatrix();
      
    }
  }
   angle=angle+0.05;
}