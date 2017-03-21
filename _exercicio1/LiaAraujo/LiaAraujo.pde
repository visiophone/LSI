
void setup(){
size(800,800);


}


void draw(){
  
background(0); 

fill(240, mouseX,mouseY);
rect(80,480,width-mouseY,60);
rect(80,720,width-mouseY,60);
rect(80,600,width-mouseY,60);
rect(80,60,60,mouseX/2);
rect(200,60,60,mouseX/2);
rect(320,60,60,mouseX/2);
rect(440,60,60,mouseX/2);
rect(560,60,60,mouseX/2);
rect(680,60,60,mouseX/2);

 
}