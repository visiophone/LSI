//float height=1000;
//float width=1000;
float distanciaBX=111;
float distanciaBY=111;


void setup() {
  size(1000,1000);
}
void draw (){
  background(204, 70, 90);
 noStroke();
  fill(0);
  



  if (mousePressed) {
 stroke(204,70,90);
 strokeWeight(90);
  
  }
//MASTER SQUARE
fill(random(255,10));
rect(50,50,900,900);


//VERTICAL
//1
fill(random(11),random(50));
rect(distanciaBX,100,100,height/2.5);

//2
fill(random(204,70),random(90));
rect(distanciaBX*2.5,100,100,height/2.5);

//3
fill(random(11),random(50));
rect(distanciaBX*4,100,100,height/2.5);

//4
fill(random(11),random(50));
rect(distanciaBX*5.5,100,100,height/2.5);

//5
fill(random(11),random(50));
rect(distanciaBX*7,100,100,height/2.5);


//HORIZONTAL
//1
fill(random(11),random(50));
rect(distanciaBY,550,width/1.3,100);

//2
fill(random(11),random(50));
rect(distanciaBY,675,width/1.3,100);

//3
fill(random(11),random(50));
rect(distanciaBY,800,width/1.3,100);











  
}