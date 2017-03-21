void setup(){
size(800,800);

}

void draw(){
background(mouseX,100,240); 






  
stroke(0);
fill(mouseX,mouseY,255);
rect(70,height-mouseX, 30, mouseX); 
rect(120,height-mouseX, 30, mouseX); 
rect(170,height-mouseX, 30, mouseX);  
rect(220,height-mouseX, 30, mouseX);
rect(550,height-mouseX,30, mouseX); 
rect(600,height-mouseX,30,mouseX); 
rect(650,height-mouseX, 30,mouseX); 
rect(700,height-mouseX,30,mouseX); 




rect(mouseY,500,300, 30); 
rect(mouseY,550,300,  30); 
rect(mouseY,600, 300, 30); 
rect(mouseY,650,300, 30); 

}


void mouseReleased(){
background (mouseX,mouseY,200);
 }
 
void keyReleased(){  

if (key == 's' || key == 'S')
  
saveFrame("exercício1_###.jpg"); 

 
 
 
 }