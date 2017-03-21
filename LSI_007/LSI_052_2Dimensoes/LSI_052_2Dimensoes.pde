void setup() {
  size(800, 800);
}


void draw() {

  
  background(0);
  
  
  for (int i = 40; i < width; i=i+40) {
    for (int j = 40; j < height; j=j+40) { 
      //fill(200,i/3,j/3);
      stroke(255);
      if(i<width-40) line(i,j,i+40,j);
      noStroke();
      ellipse(i,j,20,20);
    }
  }
}