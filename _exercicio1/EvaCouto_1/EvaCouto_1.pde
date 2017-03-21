void setup(){
  size(850,800);
}

void draw(){

  //white background
  if(mousePressed) {background(#000000);} else {background(#FFFFFF);}
  
  //black square
  if(mousePressed) {fill(#FFFFFF);} else {fill(#000000);}
  rect(25,25,800,750);
  
  //line specs
  if(mousePressed) {stroke(#000000);} else {stroke(#FFFFFF);}
  strokeWeight(50);
  strokeCap(SQUARE);

  //initial coordinates
  int posX=125;
  int posY=100;

  //vertical lines
  while (posX<800) {
    if(mouseY<=400) {
      if(mousePressed) {line (posX+random(25),posY,posX+random(25),mouseY);} else {line(posX,posY,posX,mouseY);}
    } else {
      if(mousePressed) {line (posX+random(25),posY,posX+random(25),400);} else {line(posX,posY,posX,400);}
    }
    posX=posX+100;
  }  
  
  //horizontal lines
  posX=100;
  posY=475;
  while (posY<700) {
    if(mouseX<=750) {
      if(mousePressed) {line(posX,posY+random(25),mouseX,posY+random(25));} else {line(posX,posY,mouseX,posY);}
    } else {
      if(mousePressed) {line(posX,posY+random(25),750,posY+random(25));} else {line(posX,posY,750,posY);}
    }
    posY=posY+100;
  }

}