// reads on the beginnig
void setup() {
  //screen size
  size(800, 800);
}


// loops / read forever
void draw() {

//background color
background(0,0,0);

//console print
println(mouseX);

//color
fill(0,50,70);
stroke(255,255,255);
strokeWeight(4);

//circle
ellipse (400,400,mouseX,mouseX); 
}
