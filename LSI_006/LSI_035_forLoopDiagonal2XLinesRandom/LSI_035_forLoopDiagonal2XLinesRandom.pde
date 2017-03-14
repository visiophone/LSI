

void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();


stroke(255);  

for (int i=0; i<height; i=i+20){  
 
  line(0,i,width/2,random(mouseX)+1);  
}

for (int i=0; i<height; i=i+20){ 

  line(width,i,width/2,random(mouseX)+1);  
}

  
}