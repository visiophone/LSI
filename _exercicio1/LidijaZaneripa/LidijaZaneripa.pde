float pos1X=20;
float pos1Y=30;
float pos2Y=70;
float pos2X=300;

float size1=random(50);

float pos3X=20;////////horror
float pos3Y=400;
float pos4Y=760;
float pos4X=40;

float pos6X=20;//////horror
float pos6Y=500;
float pos5Y=760;
float pos5X=40;

float pos7X=20;//////horror
float pos7Y=600;
float pos8Y=760;
float pos8X=40;

float pos9X=20;  ///////hor
float pos9Y=700;
float pos10Y=760;
float pos10X=40;

float pos11X=710;
float pos11Y=30;
float pos12Y=70;
float pos12X=300;

float pos13X=510;
float pos13Y=30;
float pos14Y=70;
float pos14X=300;

float pos15X=410;
float pos15Y=30;
float pos16Y=70;
float pos16X=300;



float pos19X=310;
float pos19Y=30;
float pos20Y=70;
float pos20X=300;

float pos21X=210;
float pos21Y=30;
float pos22Y=70;
float pos22X=300;

float pos17X=610;
float pos17Y=30;
float pos18Y=70;
float pos18X=300;

float pos23X=110;
float pos23Y=30;
float pos24Y=70;
float pos24X=300;

int randd=0;
int move=20;
int translate=0;
void setup(){
  size(800,800);
 move=int(random(20,80));
 
}
void draw(){
  
  background(0);
 

 stroke(mouseX/2,mouseY/2,mouseX,mouseY);
   strokeWeight(random(mouseX,mouseY));
  strokeCap(SQUARE);
  randd=int(random(10));
  
  
  fill(255,255,0);
  rect(pos1X,pos1Y,pos2Y,pos2X);
  rect(pos3X,pos3Y,pos4Y,pos4X);
  rect(pos6X,pos6Y,pos5Y,pos5X);
  rect(pos7X,pos7Y,pos8Y,pos8X);
  rect(pos9X,pos9Y,pos10Y,pos10X);
  rect(pos11X,pos11Y,pos12Y,pos12X);
  rect(pos13X,pos13Y,pos14Y,pos14X);
  rect(pos15X,pos15Y,pos16Y,pos16X);
  rect(pos17X,pos17Y,pos18Y,pos18X);
  rect(pos19X,pos19Y,pos20Y,pos20X);
  rect(pos21X,pos21Y,pos22Y,pos22X);
  rect(pos23X,pos23Y,pos24Y,pos24X);


}

void mousePressed(){

 background(255,255,0);
strokeWeight(20);
}

void keyReleased(){  
if (key == 's' || key == 'S')
saveFrame("save-###.jpg");
}