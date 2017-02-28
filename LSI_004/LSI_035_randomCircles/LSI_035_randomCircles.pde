import processing.pdf.*;

float sizee= 0;
float step=random(0.1,3);

boolean black=true;

void setup(){
  
  size(800,800);
  background(255);
  beginRecord(PDF, "circles.pdf"); 
  
}


void draw(){
  
 

  
  if(black==true) stroke(0,50);
  else stroke(255,150);
  
  float varr = map(sizee,0,800,0,150);
  float centerRandX=random(-varr,varr);
  float centerRandY=random(-varr,varr);
  noFill();
  ellipse(400+centerRandX,400+centerRandY, sizee,sizee);
  sizee=sizee+step;
  
 // println(centerRand);
  
  if(sizee>600){
   sizee=0;
   stroke(random(0,150),50);
    black=!black;
    step=random(0.1,3);
  }
  
   
}


void keyPressed(){
  if(key=='r' || key=='R') endRecord();
  
}