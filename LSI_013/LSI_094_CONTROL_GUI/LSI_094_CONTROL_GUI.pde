import controlP5.*;

ControlP5 cp5;

int slider1 = 0;
float slider2=0;
int R=255;
int G=255;
int B=255;

void setup() {
  size(800, 800);  
  
  noFill();

  cp5 = new ControlP5(this);
  
  cp5.addSlider("slider1")
     .setRange(0, 255)
     .setPosition(20, 20)
     .setSize(200, 20)
     ;
     
  cp5.addSlider("slider2")
     .setRange(0, 800)
     .setPosition(20, 60)
     .setSize(200, 20)
     ;
     
      cp5.addSlider("R")
     .setRange(0, 255)
     .setPosition(20, 90)
     .setSize(100, 10)
     ;
       cp5.addSlider("G")
     .setRange(0, 255)
     .setPosition(20, 110)
      .setSize(100, 10)
     ;
       cp5.addSlider("B")
     .setRange(0, 255)
     .setPosition(20,130)
     .setSize(100, 10)
     ;
}


void draw() {
  background(slider1);
 
 fill(R,G,B);
  ellipse(width/2,height/2, slider2,slider2);
 
}