//reads once. on start
void setup() { 
  // display size
  size(800, 800);
}

//lopps forever
void draw () {

  //rect with the same size as the display 
  // with alpha () , for the fade effect
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);

  // Stroke Color. Changing wiht the Mouse movement
  stroke(255, mouseX, mouseY);
  // horizontal line. following the mouse
  line(0+mouseX, mouseY, 800-mouseX, mouseY);
  
  //printing mouseX + SPACE + mouseY
  println(mouseX+" "+mouseY);
}