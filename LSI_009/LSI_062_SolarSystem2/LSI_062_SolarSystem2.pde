float planet1=0;
float lua1=0;
float planet2=0;
float lua2=0;
float lua3=0;

void setup(){
 size(800,800); 
 strokeWeight(2);
}

void draw(){
  background(0);
  fill(255);
  translate(width/2,height/2);
  
  //SUN
  noStroke();
  ellipse(0,0,150,150); //SUN
  stroke(255); 
  noFill();
  stroke(100);
  ellipse(0,0,320,320); // ORBIT
  ellipse(0,0,600,600); // ORBIT

 //PLANET 1
  pushMatrix();
  rotate(planet1);
  translate(160,0);
  fill(255);
  ellipse(0,0,50,50); //planet1
  stroke(100);noFill();
  ellipse(0,0,100,100); // orbit
  rotate(lua1);
  fill(0);
  ellipse(50,0,20,20); 
  popMatrix();
  
 //PLANET 2 
  pushMatrix();
  rotate(planet2);
  translate(300,0);
  fill(255);
  ellipse(0,0,80,80); //planet2
  stroke(100);noFill();
  ellipse(0,0,200,200); // orbit
  ellipse(0,0,140,140); // orbit
  rotate(lua2);
  fill(0);
  ellipse(70,0,30,30);
  rotate(lua3);
  ellipse(100,0,15,15);
  popMatrix();

 // rotate(rot1);
  //ellipse(300,0,50,50);

//
planet1=planet1+0.01;
planet2=planet2+0.02;
lua1=lua1+0.005;
lua2=lua2+0.01;
lua3=lua3+0.01;
}