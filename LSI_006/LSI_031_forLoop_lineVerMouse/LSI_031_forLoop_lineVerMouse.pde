void setup(){
 
  size(800,800);
  
  
}


void draw(){
  
background(0); 
stroke(255);
  
  for (int i = 0; i < height; i = i + 10){
    
  line(i,0,i,mouseX);  
    
  }
  
}