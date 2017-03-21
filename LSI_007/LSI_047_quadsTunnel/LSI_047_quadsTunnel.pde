float sizee=0;

void setup(){
  size(800,800);
 rectMode(CENTER);
}


void draw(){

translate (width/2,height/2);
  
background(0);  
stroke(255,0,0);
noFill();
 
  strokeWeight(2);  
  for(int i=0; i<width;i=i+50){
  rect(0,0,i,i);
  }
  
  strokeWeight(15);

  stroke(255);
  rect(0,0,sizee,sizee);
  
  sizee=sizee+5;
  if(sizee>800)sizee=0;
  
}