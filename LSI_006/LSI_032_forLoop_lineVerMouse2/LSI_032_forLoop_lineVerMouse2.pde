int steps=10;

void setup(){
 
  size(800,800);
  
  
}


void draw(){
  
background(0); 
stroke(255);
 

  
  for (int i = 0; i < height; i = i + 40){
  
  stroke(mouseY/2,10,i); 
  
  float distance= abs(mouseX-i);
  line(i,0,i,distance);  
    
  }
  
}