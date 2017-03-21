void setup(){
  size(800,800);
  
  //smooth();
}


void draw(){
  
  background(0);
  
stroke(255);
  
  for(int i=0; i<width;i=i+10){
    
 line(0,i,i,0);
 line(i,i,width,i);
 //line(width,i,width/4,i/3);
    
  }
  
}