float rot1=0;

void setup(){
  
  size(800,800);
  
}


void draw(){
  background(0);
  stroke(255);
  translate (width/2,height/2);
  noFill();
  
  
  int counter=1;  
  colorMode(HSB);

rotate(rot1);
 
  for(int i=0;i<360;i=i+(360/64)){
   pushMatrix();
   rotate(radians(i));
   stroke(i/10,360,360);
   ellipse(mouseX,0,mouseY,mouseY);  
   
   text(counter, 360,0);
   counter++;

   popMatrix();
  }
  
rot1=rot1+0.01;
}