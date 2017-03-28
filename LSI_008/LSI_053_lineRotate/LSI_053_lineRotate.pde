float angle=0;

void setup(){
  
 size(800,800); 

}


void draw(){
  
  background(0);
  stroke(255);
  
  translate (width/2, height/2);
  text(angle,10,10); //printing degrees
  
  angle=mouseX/2; //position of mouse X -> degree to rotate
  rotate(radians(angle)); // rotating in radians (converting from degrees)
  
  line(0,0,300,0); // line
  
}