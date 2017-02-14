
// setup() runs first one time.  
void setup() {
  
  // screen size width,height
  size(480, 820);
}

// draw() loops continuously until you close the sketch window.
void draw() {
 
// If mousePressed color= Black. If not color=White   
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  
  // ellipse, poX, posY, size, size) 
  ellipse(mouseX, mouseY, 80, 80);
}