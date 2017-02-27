float posX=400; //circle positions and velocity
float posY=400;
float velX=random(-2, 2);
float velY=random(-2, 2);

float raio=100; // circle size

boolean start=false; // START condition . boolean True or False;

void setup() {
  size(800, 800);
  background(0); //painting back on start
}

void draw() {

  posX=posX+velX+random(-1, 1); //updating pos 
  posY=posY+velY+random(-1, 1);

  if (posX<0 || posX>width) { 
    start=true;
  } // checking limits Screen
  if (posY<0 || posY>height) {
    start=true;
  } 

  raio=raio-0.5; // making circle smaller
  // checking if size is zero
  if (raio<0) {
    start=true;
  } 

  // drawing circle  
  stroke(255); 
  fill(0);
  ellipse(posX, posY, raio, raio);

  //START 
  if (start==true) { 
   
    posX=width/2; //ball comes to center
    posY=height/2;
    
    raio=random(50, 150); //new ball size 
  
    velX=random(-2, 2); // new velocity / direction
    velY=random(-2, 2);

    start=false; //Ending START condition. 
  }
}

// When mouse is clicked
void mouseDragged() {
  //Check Mouse Position. And change Random Probabilities 
  if (mouseX<width/2) velX=random(-3, 0); //mouse RIGHT -> VEL random to Left
  if (mouseX>=width/2) velX=random(0, 3); //mouse RIGHT -> VEL random to Right
  if (mouseY<height/2) velY=random(-3, 0); //mouse Up -> VEL random to UP
  if (mouseY>=height/2)  velY=random(0, 3); //mouse Down -> VEL random to Down
}

// When a key is pressed
void keyReleased() {  
  // If Key is P or p, print a frames
  if (key == 's' || key == 'S') { 
    saveFrame("save-###.jpg");
  } 
  //If Key is b or B, paint background
  if (key == 'B' || key == 'b') { 
background(0);
  }
}