void setup(){
  
  //display size
  size(800,800);
  background(0,0);
}


void draw(){

//stroke color
stroke(255);

//fill color
fill(0,10);

//RectMODE. Draws the rectagle from the CENTER 
rectMode(CENTER);
// rect(centerX, centerY, width, height
rect(width/2,height/2,mouseX, mouseY);  
  
}