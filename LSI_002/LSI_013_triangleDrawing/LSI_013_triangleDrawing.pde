
// Starts the Scketch
void setup() { 
  //screen size
  size(800, 800);
  // painting the back in black 
  background(0);
}

// Looping forever
void draw() {

  // border line color
  stroke(0);
  // fill color.
  fill(200,mouseX/6, mouseY/4,50);

 triangle(0, 0, width, 0, mouseX, mouseY);
 // Drawing ellipse on the same position as the mouse. Size depends on the mouse position.
 // ellipse(mouseX, mouseY, mouseX/3, mouseX/3);
;
}


// This action happens when the mouse is clicked
void mouseClicked() { 
  // painting the background in black
  background(0);
}


// When a key is pressed
void keyPressed(){  
// Save a frame with the framenumber on its name
saveFrame("save-###.jpg");
}