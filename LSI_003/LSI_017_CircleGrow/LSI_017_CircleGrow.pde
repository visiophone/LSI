//circle positions and velocity
float posX=400;
float posY=400;
float velX=random(-2,2);
float velY=random(-2,2);

// circle size
float raio=100;

// START condition . boolean True or False;
boolean start=false;

void setup(){
size(800,800);
background(0); //painting back on start
}

void draw(){
  
posX=posX+velX+random(-1,1); //updating pos 
posY=posY+velY+random(-1,1);

if(posX<0 || posX>width) { start=true; } // checking limits Screen
if(posY<0 || posY>height) {start=true;} 
  
raio=raio-0.5; // making circle smaller
if(raio<0) {start=true;} // // checking is size is zero

// drawing circle  
stroke(255); 
fill(0);
ellipse(posX, posY, raio, raio);

//START
if (start==true){ 

//ball comes to center
posX=width/2;
posY=height/2;

//new ball size 
raio=random(50,150);

// new velocity / direction
velX=random(-2,2);
velY=random(-2,2);

//Ending START condition. 
start=false;
  
}
   
}