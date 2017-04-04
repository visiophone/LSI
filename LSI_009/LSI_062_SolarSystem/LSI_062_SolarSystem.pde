float rot1=0;


void setup(){
 size(800,800); 
}

void draw(){
  background(0);
  fill(255);
  translate(width/2,height/2);
  
  ellipse(0,0,200,200);
  
  stroke(255);
  
  noFill();
  ellipse(00,00,400,400);
  ellipse(00,00,600,600);
  
  fill(255);
  rotate(rot1);
  ellipse(200,0,50,50);

  rotate(rot1);
  ellipse(300,0,50,50);

//
rot1=rot1+0.02;
}