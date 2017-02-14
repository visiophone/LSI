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
fill(50, mouseY);
rect(50,50,700,700);
fill(100, mouseY);
rect(150,150,500,500);
fill(150, mouseY);
rect(250,250,300,300);
fill(200, mouseY);
rect(350,350,100,100);



}