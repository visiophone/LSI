

void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();

  

for (int i=0; i<height; i=i+20){  
  stroke(i/2,10,200);
  line(0,i,mouseX,mouseY);  
}

for (int i=0; i<height; i=i+20){ 
   stroke(i/2,10,200);
  line(width,i,mouseX,mouseY);  
}

  
}