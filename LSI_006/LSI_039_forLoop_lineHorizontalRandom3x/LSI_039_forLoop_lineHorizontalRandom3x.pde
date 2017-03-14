
void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();

stroke(255);
strokeCap(SQUARE);
  
for (int i=0; i<width; i=i+10){ 
  strokeWeight(random(i)/10);
  line(0,i,width/3,i);  
  
}

for (int i=0; i<width; i=i+20){  
  strokeWeight(random(i)/10);
  line(width/3,i,(width/3)*2,i);   
}

for (int i=0; i<width; i=i+30){  
  strokeWeight(random(i)/10);
  line((width/3)*2,i,width,i);   
}
  
}