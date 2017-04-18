
float x=0.0;
float y=0.0;

float xx=0.0;
float yy=0.0;


void setup(){
 size(600,600); 
  
    fill(0);
    stroke(0);
    smooth();
}


void draw(){
background(240); 

  
ellipse(mouseX, mouseY, 10,10);
  
x+=(mouseX-x)*0.2;
y+=(mouseY-y)*0.2;


ellipse(x, y, 100,100);
line(x,y,mouseX, mouseY);
  
}