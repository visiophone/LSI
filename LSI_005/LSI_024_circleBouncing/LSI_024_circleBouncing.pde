
// variable to store circles positions X/Y
float posX=400;
float posY=400;

// variable to store circles velocities X/Y
float velX=random(-5,5);
float velY=random(-5,5);

float ballSize = random(10,100);

void setup (){
  
 size(800,800); // Display dimensions
 
}


void draw (){

background(0);

 // circles color
 fill(255);
 
  // if circle goes out of the screen, velocity is inverted
 if(posX<(ballSize/2) || posX > (width-ballSize/2) ) {velX=-velX;}
 if(posY<(ballSize/2) || posY > (height-ballSize/2) ) {velY=-velY;}
 
 
posX=posX+velX;
posY=posY+velY;
 

 //drawing circle
 ellipse(posX,posY, ballSize,ballSize);
  
}


// When a key is pressed
void keyReleased(){  
// If Key pressed is P or p, print a frame
if (key == 's' || key == 'S'){
saveFrame("save-###.jpg");
}
}


void mouseReleased(){  
  
velX=random(-3,3);
velY=random(-3,3);

ballSize = random(10,100);

posX=width/2;
posY=height/2;

  
}