void setup() {
  size(750,700);
  background(88,50,79);

}


void draw() {
 
  rect(50,mouseY,50,300);
  rect(150,mouseY,50,300);
  rect(250,mouseY,50,300);
  rect(350,mouseY,50,300);
  rect(450,mouseY,50,300);
  rect(550,mouseY,50,300);
  rect(650,mouseY,50,300);
  
  rect(mouseX,400,mouseX,50);
  rect(mouseX,500,mouseX,50);
  rect(mouseX,600,mouseX,50);
  
  fill(mouseX/4,mouseY/4,219,100);
  stroke(mouseX/4,mouseY/4,255);
  
  println(mouseY);
  
  rect(50,50,50,300);
  rect(150,50,50,300);
  rect(250,50,50,300);
  rect(350,50,50,300);
  rect(450,50,50,300);
  rect(550,50,50,300);
  rect(650,50,50,300);

  
  rect(50,400,650,50);
  rect(50,500,650,50);
  rect(50,600,650,50);
  
  noFill();
  stroke(mouseX/4,mouseY/4,255);
  
  println(mouseY);

}

void mouseClicked(){
 background(255);

}

void keyPressed(){
  
  saveFrame("save-###.jpg");
  
}