import processing.pdf.*;

// Based on by Casey Reas / YesNo "software2"
// http://reas.com/yesno_s2/

int posX=0;
int posY=0;

int step=25;

//random number to decide if line is left or right
int randd=0;

// record PDF
boolean record=false;

void setup(){
  size(800,800);
  beginRecord(PDF, "diagonalGrid.pdf");
  background(0);
}

void draw(){
  
   
  stroke(255);
  
if(posY<height){
  if(posX>width){
  posX=0;
  posY=posY+step;
  }
  
  strokeWeight(random(1,3));
  strokeCap(SQUARE);
  
  // random line orientation
  randd=int(random(10));
 
 //if line type A 
if(randd==0)line(posX,posY,posX+step,posY+step);
//any other option line typeB
else line(posX,posY+step,posX+step,posY);
  
  posX=posX+step;
}

//Whe the drawing finishess, end the PDF
if(posY>=height){endRecord(); println("PDF READY");}

}


void mouseReleased(){
// Start Again. Paing Background. PoX is again Zero  
  background(0);  
posX=0;
posY=0;

 }