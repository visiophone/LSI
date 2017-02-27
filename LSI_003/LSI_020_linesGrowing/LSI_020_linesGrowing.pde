float posX=random(0,800); //circle positions and velocity
float posY=800;
float velX=random(-3, 3);
float velY=random(-3, 0);

float raio=100; // circle size

boolean start=false; // START condition . boolean True or False;

void setup() {
  size(800, 800);
  background(240); //painting back on start
}

void draw() {

  posX=posX+velX+random(-2, 2); //updating pos 
  posY=posY+velY+random(-2, 2);

  if (posX<(0-raio) || posX>(width+raio)) { 
    start=true;
  } // checking limits Screen
  if (posY<(0-raio) ) {
    start=true;
  } 

  raio=raio-0.2; // making circle smaller
  // checking if size is zero
  if (raio<0) {
    start=true;
  } 

  // drawing circle  
  stroke(255); 
  fill(255-(posY/4),0,posY/4);
 // ellipse(posX, posY, raio, raio);
 
 // drawing lines from the center screen, not circles
stroke(0,50);
line(posX,posY,width/2, posY);

  //START 
  if (start==true) {    
    posX=random(0,800); //ball comes to center
    posY=800;   
    raio=random(20, 150); //new ball size  
    velX=random(-3, 3); // new velocity / direction
    velY=random(-3, 0);

    start=false; //Ending START condition. 
  }
}

// When mouse is clicked
void mouseDragged() {
  //Check Mouse Position. And change Random Probabilities 
  if (mouseX<width/2) velX=random(-3, 0); //mouse RIGHT -> VEL random to Left
  if (mouseX>=width/2) velX=random(0, 3); //mouse RIGHT -> VEL random to Right

  velY=random(-5,-1);

}

// When a key is pressed
void keyReleased() {  
  // If Key is P or p, print a frames
  if (key == 's' || key == 'S') { 
    saveFrame("save-###.jpg");
  } 
  //If Key is b or B, paint background
  if (key == 'B' || key == 'b') { 
    background(0); //painting back on start
  }
}