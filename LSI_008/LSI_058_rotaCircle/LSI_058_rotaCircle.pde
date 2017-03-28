void setup(){
  
  size(800,800);
  
}


void draw(){
  background(0);
  stroke(255);
  translate (width/2,height/2);
  noFill();
  int counter=1;
  
  for(int i=0;i<360;i=i+(360/32)){
   pushMatrix();
   rotate(radians(i));
   ellipse(200,0,150,150); 
    
   text(counter, 300,0);
   counter++;
   println(i+" "+i);
   popMatrix();
  }
  
}