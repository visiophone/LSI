
// variable to store circles positions X/Y
float posX=400;
float posY=400;

void setup (){
  
 size(800,800); // Display dimensions
 
}


void draw (){

 background(0); 
 
 // circles color
 fill(255);
 
 // updating circles position
 posX=posX+2;

 //drawing circle
 ellipse(posX,posY, 200,200);
 
 // if circle is off the screen, return to pos zero
 if(posX>width) posX=0;
  
}