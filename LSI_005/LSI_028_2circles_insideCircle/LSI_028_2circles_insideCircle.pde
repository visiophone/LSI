// variable to store circles positions X/Y
float pos1X=random(300,500);
float pos1Y=random(300,500);

// variable to store circles positions X/Y
float pos2X=random(60,300);
float pos2Y=random(100,150);

// variable to store circles velocities X/Y
float vel1X=random(-5,5);
float vel1Y=random(-5,5);

// variable to store circles velocities X/Y
float vel2X=random(-5,5);
float vel2Y=random(-5,5);

float size1 = random(20,50);
float size2 = random(20,50);

float distance = 0;

// center circle
float sizeBigCircle=400;

void setup (){  
 size(800,800); // Display dimensions
}


void draw (){

background(255);

noStroke(); fill(0);
// CIRCLE BORDER in the center
ellipse (400,400,sizeBigCircle,sizeBigCircle);

// lines that conect circles to center
stroke(0);
line(pos2X,pos2Y,400,400); //balck circle to cneter
stroke(255);
line(pos1X,pos1Y,400,400); //white circle to center
//dot in the center
fill(255);
ellipse(400,400,5,5);


 //CEHCKING IS CIRCLE 1 HITS THE BORDER
 if(dist(pos1X,pos1Y,400,400) > (sizeBigCircle-size1)/2){
   vel1X=(vel1X*-1)+random(-0.5,0.5);
   vel1Y=(vel1Y*-1)+random(-0.5,0.5);
 }

pos1X=pos1X+vel1X;
pos1Y=pos1Y+vel1Y;

 // circles color
 fill(255);
//drawing circle 1
ellipse(pos1X,pos1Y, size1,size1);


/////////////

 //CIRCLE 2
  // if circle goes out of the screen, velocity is inverted
 if(pos2X<(size2/2) || pos2X > (width-size2/2) ) {vel2X=(vel2X*-1)+random(-0.5,0.5);}
 if(pos2Y<(size2/2) || pos2Y > (height-size2/2) ) {vel2Y=(vel2Y*-1)+random(-0.5,0.5);}

 //CEHCKING IS CIRCLE 1 HITS THE BORDER
 if(dist(pos2X,pos2Y,400,400) < (sizeBigCircle+size2)/2){
   vel2X=(vel2X*-1)+random(-0.2,0.2);
   vel2Y=(vel2Y*-1)+random(-0.2,0.2);
 }

//updating pos
pos2X=pos2X+vel2X;
pos2Y=pos2Y+vel2Y;

fill(0);
 //drawing circle 2
ellipse(pos2X,pos2Y, size2,size2);
 


 
}

// When a key is pressed
void keyReleased(){  
// If Key pressed is P or p, print a frame
if (key == 's' || key == 'S'){
saveFrame("save-###.jpg");
}
}


void mouseReleased(){  
  
//reseting circles

pos1X=random(300,500);
pos1Y=random(300,500);

pos2X=random(60,300);
pos2Y=random(100,150);
  
vel1X=random(-3,3);
vel1Y=random(-3,3);

vel2X=random(-3,3);
vel2Y=random(-3,3);

size1 = random(20,50);
size2 = random(20,50);



  
}