


void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();
stroke(255);
  
for (int i=0; i<width; i=i+20){
 
  float randd=random(i);
  ellipse(width/2,height/2,randd,randd);
 
}
  
}