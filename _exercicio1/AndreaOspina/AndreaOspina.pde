float posY=100;
float posX=100;
float posV=400;

float velY=1;
float velX=2;


float size=random(50,80);
float pos1X=250;
float move=10;
float fill1=25;


void setup(){
  size(800,800);
  background(0);

}

void draw(){
  stroke(255);
  noFill();
  strokeWeight(10);
  rect(10,10,780,720);
  
  posX=posX+velX;
    
  stroke(255);
  strokeWeight(10);
  fill(255);
  rect(posX,50,50,300);
 
  
  rect(pos1X,50,50,300);
  rect(450,50,50,300);
  rect(650,50,50,300);
   
   posV=posV+velY;
      rect(100,posV,600,50);
      rect(100,500,600,50);
      rect(100,600,600,50);
 }
 
void keyPressed(){
  saveFrame("save-###.jpg");
}

void mouseClicked(){ //que el marcador comience otra vez cuando clickee
  background(0);
  posX=100;
  posV=400;
  }