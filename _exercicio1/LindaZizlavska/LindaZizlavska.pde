//HORIZONTAL
//01
float pos1X=115;
float pos1Y=410;
float size1=620;
//02
float pos2X=115;
float pos2Y=490;
float size2=620;
//03
float pos3X=115;
float pos3Y=570;
float size3=620;
//VERTICAL
//04
float pos4X=117;
float pos4Y=130;
float size4=340;
//05
float pos5X=117;
float pos5Y=208;
float size5=340;
//06
float pos6X=117;
float pos6Y=286;
float size6=340;
//07
float pos7X=117;
float pos7Y=364;
float size7=340;
//08
float pos8X=117;
float pos8Y=442;
float size8=340;
//09
float pos9X=117;
float pos9Y=520;
float size9=340;
//10
float pos10X=117;
float pos10Y=600;
float size10=340;

void setup(){
  
  size(740,700);
  background(0);
  strokeCap(SQUARE);
}


void draw(){
  
  fill(0,0,0,5);
  rect(0,0,width,height);
  
  stroke(255);  
  strokeWeight(35);  

  line(mouseX,pos1Y,size1,pos1Y);
  line(mouseX,pos2Y,size2,pos2Y);
  line(mouseX,pos3Y,size3,pos3Y);

  line(pos4Y,mouseX,pos4Y,size4);
  line(pos5Y,mouseX,pos5Y,size5);
  line(pos6Y,mouseX,pos6Y,size6);
  line(pos7Y,mouseX,pos7Y,size7);
  line(pos8Y,mouseX,pos8Y,size8);
  line(pos9Y,mouseX,pos9Y,size9);
  line(pos10Y,mouseX,pos10Y,size10);

  
  noFill();
  stroke(250,mouseY+1,mouseX/2);   
  rect(50,50,640,600);
 
}

void mouseClicked() {
  background(1,0,1);

}

void keyPressed(){
  saveFrame("ex1-###.jpg");
}