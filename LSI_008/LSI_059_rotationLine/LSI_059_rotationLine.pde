void setup(){
  
 size(800,800); 
 

}

void draw(){
  
  background(0);
  stroke(255);
  
  translate (width/2,height/2);
  
 
    for(int i=0;i<360;i=i+2){
   pushMatrix();
   rotate(radians(i));
   line(mouseX/2,0,400,0);
   popMatrix();
  }


  }