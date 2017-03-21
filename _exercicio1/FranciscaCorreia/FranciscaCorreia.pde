int counter = 1;

void setup(){
  
  size(800,800);
  background(255);
  strokeCap(SQUARE);
}

void draw(){
  
  strokeWeight(40);
  line(200,100,200,400);
  line(300,100,300,400);
  line(400,100,400,400);
  line(500,100,500,400);
  line(600,100,600,400);
 

 line(100,400,700,400);
  line(100,600,700,600);
  line(100,500,700,500);

noFill();
rect(100, 100, 600, 600);



if(counter == 1) {
    stroke(236,192,232);
  }  
  else if(counter == 2) {
    stroke (171,95,164); 
  }
  else if(counter == 3) {
    stroke (143,29,133); 
  }

  
}

void mouseMoved() {
 counter++; //
 if(counter == 4) {
   counter = 1;  // 
 }
 println(counter);

}