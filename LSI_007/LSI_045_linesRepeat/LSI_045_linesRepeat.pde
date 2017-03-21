void setup(){
  size(800,800);
  
  //smooth();
}


void draw(){
  
  background(0);
  
stroke(255);
  
  for(int i=0; i<width;i=i+10){

 stroke(i/3,mouseY/4,mouseX/4);    

 line(i,i,width,i);
 line(i,i,i,height);
 //line(width,i,width/4,i/3);
    
  }
  
}