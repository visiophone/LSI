
// variable to store circles positions X/Y
float posX=400;
float posY=400;

// variable to store circles velocities X/Y
float velX=random(-2,2);
float velY=random(-2,2);

// variable to store the size of the ball
float ballSize = 100;

// if active saves images
boolean save=false;
boolean back=false;

void setup (){ 
size(800,800); // Display dimensions
background(0);
}


void draw (){

// if boolean back is active, paint the background, if not, dont paint it
if(back) background(0);

 // circles color
 fill(255);
 
// if circle goes out of the screen, velocity is inverted
if(posX<(0-ballSize)) posX=width;
if(posX>(width+ballSize/2) ) posX=0;

if(posY<(0-ballSize)) posY=height;
if(posY>(height+ballSize) ) posY=0;
 
// velocity changes with mouse position 
/*
if(mouseX<width/2) velX=random(-4,1);
if(mouseX>=width/2) velX=random(-1,4);

if(mouseY<height/2) velY=random(-4,1);
if(mouseY>=height/2) velY=random(-1,4);
*/

// velocity changes with mouse position 

if(mouseX<width/2) velX=random(map(mouseX,0,height,-10,0),2);
if(mouseX>=width/2) velX=random(-2,map(mouseX,0,height,0,10));

if(mouseY<height/2) velY=random(map(mouseY,0,height,-10,0),2);
if(mouseY>=height/2) velY=random(-2,map(mouseY,0,height,0,10));


posX=posX+velX;
posY=posY+velY;
  
 //drawing circle
 ellipse(posX,posY, ballSize,ballSize);
  
 
}


// When a key is pressed
void keyReleased(){  

  // If Key pressed is P or p, print a frames
if (key == 's' || key == 'S'){
  
saveFrame("save-###.jpg"); 

}

//If Key pressed is b or B, paint background
if (key == 'B' || key == 'b'){

  back=!back;
}

}


// if mouse is pressed, changes the direction/velocitiesXY and ballSize
void mouseReleased(){  
  
velX=random(-5,5);
velY=random(-5,5);

ballSize=random(20,400);
  
}