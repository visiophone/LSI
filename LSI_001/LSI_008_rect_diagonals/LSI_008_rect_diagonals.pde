void setup() {
  //screen size
  size(800, 800);
}

void draw() {

//background color
background(0);

noFill();
stroke(255,255,255);

//rectangle ( cornerX, cornerY, width, height);
rect(200,200,400,400);

//line
line(0,0,width,height);
line(0,height,width,0);

}