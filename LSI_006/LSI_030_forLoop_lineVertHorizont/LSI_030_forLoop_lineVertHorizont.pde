


void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();

  
for (int i=0; i<width; i=i+20){ 
  stroke(mouseX/4);
  line(i,0,i,height);  
}

stroke(255);
for (int i=0; i<height; i=i+20){  
  line(0,i,width,i);  
}
  
}