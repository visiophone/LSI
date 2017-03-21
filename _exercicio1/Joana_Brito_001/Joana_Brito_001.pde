float X=34;
float Y=34;

float XX=68;
float YY=68;



void setup (){
  size(578,510);

  }
  
void draw (){
  
    background (0);
    if ((mouseX > X) && (mouseX < width-X) &&
    (mouseY > Y) && (mouseY < height -Y)) {
    fill(0);
    background(255);
  } else {
    fill(255);
  }
    
  //moldura
  rect(0,0,mouseX,Y);
  rect(0,0,X,mouseY);
  rect(width-X,0,X,mouseY);
  rect(0,height-Y,mouseX,Y);
  noStroke();
  

  //verticais 7
  rect(XX,YY,X,height/2-YY);
  rect(XX+XX,YY,X,height/2-YY);
  rect(XX+XX+XX,YY,X,height/2-YY);
  rect(XX+XX+XX+XX,YY,X,height/2-YY);
  rect(XX+XX+XX+XX+XX,YY,X,height/2-YY);
  rect(XX+XX+XX+XX+XX+XX,YY,X,height/2-YY);
  rect(XX+XX+XX+XX+XX+XX+XX,YY,X,height/2-YY);

  
  //horizontais
  
  rect(XX,height/2+Y-4,width-XX-XX,Y);
  rect(XX,height/2+YY+Y-6,width-XX-XX,Y);
  rect(XX,height/2+YY+YY+Y-10,width-XX-XX,Y);
  
  


}