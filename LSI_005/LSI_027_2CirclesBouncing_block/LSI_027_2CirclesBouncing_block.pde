// variable to store circles positions X/Y
float pos1X=random(100,700);
float pos1Y=random(100,300);

// variable to store circles positions X/Y
float pos2X=random(100,700);
float pos2Y=random(500,700);

// variable to store circles velocities X/Y
float vel1X=random(-5,5);
float vel1Y=random(-5,5);

// variable to store circles velocities X/Y
float vel2X=random(-5,5);
float vel2Y=random(-5,5);

float size1 = 50;
float size2 = 50;

float distance = 0;

boolean block=false;

void setup (){  
 size(800,800); // Display dimensions
}


void draw (){

background(0);

 // circles color
 fill(255);
 
 //CIRCLE 1
  // if circle goes out of the screen, velocity is inverted
 if(pos1X<(size1/2) || pos1X > (width-size1/2) ) {vel1X=-vel1X;}
 if(pos1Y<(size1/2) || pos1Y > (height-size1/2) ) {vel1Y=-vel1Y;}

pos1X=pos1X+vel1X;
pos1Y=pos1Y+vel1Y;
 
 //CIRCLE 2
  // if circle goes out of the screen, velocity is inverted
 if(pos2X<(size2/2) || pos2X > (width-size2/2) ) {vel2X=-vel2X;}
 if(pos2Y<(size2/2) || pos2Y > (height-size2/2) ) {vel2Y=-vel2Y;}

pos2X=pos2X+vel2X;
pos2Y=pos2Y+vel2Y;

//line connecting booth lines
stroke(255);
strokeWeight(1);
line(pos1X,pos1Y,pos2X,pos2Y);

distance= dist(pos1X,pos1Y, pos2X,pos2Y);

// Calculate distance between 2 circles
if(distance <(size1+size2)/2) {
  vel1X=-vel1X;
  vel1Y=-vel1Y;
  vel2X=-vel2X;
  vel2Y=-vel2Y;
  
}
 
 //drawing circle 1
 ellipse(pos1X,pos1Y, size1,size1);
 //drawing circle 2
 ellipse(pos2X,pos2Y, size2,size2);
 
//drawing lines
 strokeWeight(1);
line(pos1X,pos1Y,width/2,0);
line(pos2X,pos2Y,width/2,height);
 

 //IF block is active
 if(block){
 //BLOCK
stroke(255);
 strokeWeight(5);
 strokeCap(SQUARE);
line (0,mouseY, width,mouseY);

//checking BLOCK
   if(abs(pos1Y-mouseY) < size1/2){ vel1Y = -vel1Y;  }
   if(abs(pos2Y-mouseY) < size2/2){ vel2Y = -vel2Y;  }
   
 }
 
}

// When a key is pressed
void keyReleased(){  
// If Key pressed is P or p, print a frame
if (key == 's' || key == 'S'){
saveFrame("save-###.jpg");
}

// If Key pressed is P or p, print a frame
if (key == 'b' || key == 'B'){
block=!block;
}

}


void mouseReleased(){  

  
pos1X=random(100,700);
pos1Y=random(100,300);

pos2X=random(100,700);
pos2Y=random(500,700);  
  
vel1X=random(-5,5);
vel1Y=random(-5,5);

vel2X=random(-5,5);
vel2Y=random(-5,5);

}