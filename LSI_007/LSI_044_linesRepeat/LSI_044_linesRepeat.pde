

void setup(){
  size(800,800);
  

}


void draw(){
  
 background(0);

stroke(255);
noFill();
  
  for(int i=0; i<width;i=i+20){

 stroke(i/3,mouseY/4,mouseX/4);    

line(i,i,width-i,i);
    
  }
  

  
}