void setup() {
  size(800, 800);
}


void draw() {

  for (int i = 0; i < width; i=i+20) {
    for (int j = 0; j < height; j=j+20) { 
      fill(255,i/4,j/3); 
      rect(i, j, 20, 20);
    }
  }
}