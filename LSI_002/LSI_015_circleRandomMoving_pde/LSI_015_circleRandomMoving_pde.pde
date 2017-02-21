
// variable to store circles positions X/Y
float posX=400;
float posY=400;

// variable to store circles velocities X/Y
float velX=0;
float velY=0;

void setup (){
  
 size(800,800); // Display dimensions
 
}


void draw (){


 // circles color
 fill(255);
 
 // random velocity X/Y
 velX=random(-1,3);
 velY=random(-3,3.3);
 
 // updating circles position
 posX=posX+velX;
 posY=posY+velY;
 
 // if circle is off the screen, return to pos zero
 if(posX>width+100)posX=0;
 if(posY>height+100)posY=0;
 
 //drawing circle
 ellipse(posX,posY, posY/2,posY/2);
  
}


// When a key is pressed
void keyReleased(){  
// If Key pressed is P or p, print a frame
if (key == 's' || key == 'S'){
saveFrame("save-###.jpg");
}
}