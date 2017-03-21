////CRISTINA NETO - TURMA DA TARDE LSI
////OBRA DE REFERÊNCIA - "Black Bands In Two Directions" - Sol Lewitt, 1990


///////VARIABLES
float posX=100;
float posY=100;
float posYY=100;
float posXX=100;

float velY=-1;
float velX=-1;


void setup(){
 size(590,540);
 background(#FCFCFA);
 
 String s = "USE WASD TO PLAY";
fill(50);
text(s, 40, 20, 150, 80);  // Text wraps within text box
String s2 = "PRESS ANY OTHER KEY TO RESET";
fill(50);
text(s2, 360, 20, 300, 80);  // Text wraps within text box
 
}

void draw(){


  ///////rect grande
  fill(#31302D);
  rect(40,40,510,450);
  noStroke();

///////////////////////////////////////////////////////
////VERTICAL
    ///////rect 1
  fill(#FCFCFA);
  rect(70,70,30,190);
  noStroke();
  
    ///////rect 2
  fill(#FCFCFA);
  rect(130,70,30,190);
  noStroke();
  
      ///////rect 3
  fill(#FCFCFA);
  rect(190,70,30,190);
  noStroke();
  
    ///////rect 4
  fill(#FCFCFA);
  rect(250,70,30,190);
  noStroke();
  
      ///////rect 5
  fill(#FCFCFA);
  rect(310,70,30,190);
  noStroke();
  
    ///////rect 6
  fill(#FCFCFA);
  rect(370,70,30,190);
  noStroke();
  
    ///////rect 7
  fill(#FCFCFA);
  rect(430,70,30,190);
  noStroke();
  
      ///////rect 8
  fill(#FCFCFA);
  rect(490,70,30,190);
  noStroke();

////HORIZONTAL
  ///////rect 1.2
  fill(#FCFCFA);
  rect(70,300,450,30);
  noStroke();
  
    ///////rect 2.2
  fill(#FCFCFA);
  rect(70,360,450,30);
  noStroke();
  
      ///////rect 3.2
  fill(#FCFCFA);
  rect(70,420,450,30);
  noStroke();
  ////////////////////////////////////////////
if(keyPressed==true);
if(key=='s' || key=='S'){
   background(#FCFCFA);
     ///////rect grande
  fill(#31302D);
  rect(40,40,510,450);
  noStroke();
  
  String s = "USE WASD TO PLAY";
fill(50);
text(s, 40, 20, 150, 80);  // Text wraps within text box
String s2 = "PRESS ANY OTHER KEY TO RESET";
fill(50);
text(s2, 360, 20, 300, 80);  // Text wraps within text box

 ///////////////////////////////////////////////////////
////VERTICAL
    ///////rect 1
  fill(#FCFCFA);
  rect(70,posY,30,190);
  noStroke();
  
    ///////rect 2
  fill(#FCFCFA);
  rect(130,posY+10,30,190);
  noStroke();
  
      ///////rect 3
  fill(#FCFCFA);
  rect(190,posY+20,30,190);
  noStroke();
  
    ///////rect 4
  fill(#FCFCFA);
  rect(250,posY+30,30,190);
  noStroke();
  
      ///////rect 5
  fill(#FCFCFA);
  rect(310,posY+40,30,190);
  noStroke();
  
    ///////rect 6
  fill(#FCFCFA);
  rect(370,posY+50,30,190);
  noStroke();
  
    ///////rect 7
  fill(#FCFCFA);
  rect(430,posY+60,30,190);
  noStroke();
  
      ///////rect 8
  fill(#FCFCFA);
  rect(490,posY+70,30,190);
  noStroke();

////HORIZONTAL
  ///////rect 1.2
  fill(#FCFCFA);
  rect(70,300,450,30);
  noStroke();
  
    ///////rect 2.2
  fill(#FCFCFA);
  rect(70,360,450,30);
  noStroke();
  
      ///////rect 3.2
  fill(#FCFCFA);
  rect(70,420,450,30);
  noStroke();
  ////////////////////////////////////////////
  
  posY=posY+velY;
 
if(posY<40 || posY>230){
 velY=-velY;
}

}
if(key=='w' || key=='W'){
   background(#FCFCFA);
     ///////rect grande
  fill(#31302D);
  rect(40,40,510,450);
  noStroke();
  
  String s = "USE WASD TO PLAY";
fill(50);
text(s, 40, 20, 150, 80);  // Text wraps within text box
String s2 = "PRESS ANY OTHER KEY TO RESET";
fill(50);
text(s2, 360, 20, 300, 80);  // Text wraps within text box

 ///////////////////////////////////////////////////////
////VERTICAL
    ///////rect 1
  fill(#FCFCFA);
  rect(70,posYY+70,30,190);
  noStroke();
  
    ///////rect 2
  fill(#FCFCFA);
  rect(130,posYY+60,30,190);
  noStroke();
  
      ///////rect 3
  fill(#FCFCFA);
  rect(190,posYY+50,30,190);
  noStroke();
  
    ///////rect 4
  fill(#FCFCFA);
  rect(250,posYY+40,30,190);
  noStroke();
  
      ///////rect 5
  fill(#FCFCFA);
  rect(310,posYY+30,30,190);
  noStroke();
  
    ///////rect 6
  fill(#FCFCFA);
  rect(370,posYY+20,30,190);
  noStroke();
  
    ///////rect 7
  fill(#FCFCFA);
  rect(430,posYY+10,30,190);
  noStroke();
  
      ///////rect 8
  fill(#FCFCFA);
  rect(490,posYY,30,190);
  noStroke();

////HORIZONTAL
  ///////rect 1.2
  fill(#FCFCFA);
  rect(70,300,450,30);
  noStroke();
  
    ///////rect 2.2
  fill(#FCFCFA);
  rect(70,360,450,30);
  noStroke();
  
      ///////rect 3.2
  fill(#FCFCFA);
  rect(70,420,450,30);
  noStroke();
  ////////////////////////////////////////////
  posYY=posYY+velY;
 
if(posYY<40 || posYY>230){
 velY=-velY;
}
}
if(key=='a' || key=='A'){
   background(#FCFCFA);
     ///////rect grande
  fill(#31302D);
  rect(40,40,510,450);
  noStroke();

String s = "USE WASD TO PLAY";
fill(50);
text(s, 40, 20, 150, 80);  // Text wraps within text box
String s2 = "PRESS ANY OTHER KEY TO RESET";
fill(50);
text(s2, 360, 20, 300, 80);  // Text wraps within text box

///////////////////////////////////////////////////////
////VERTICAL
    ///////rect 1
  fill(#FCFCFA);
  rect(70,70,30,190);
  noStroke();
  
    ///////rect 2
  fill(#FCFCFA);
  rect(130,70,30,190);
  noStroke();
  
      ///////rect 3
  fill(#FCFCFA);
  rect(190,70,30,190);
  noStroke();
  
    ///////rect 4
  fill(#FCFCFA);
  rect(250,70,30,190);
  noStroke();
  
      ///////rect 5
  fill(#FCFCFA);
  rect(310,70,30,190);
  noStroke();
  
    ///////rect 6
  fill(#FCFCFA);
  rect(370,70,30,190);
  noStroke();
  
    ///////rect 7
  fill(#FCFCFA);
  rect(430,70,30,190);
  noStroke();
  
      ///////rect 8
  fill(#FCFCFA);
  rect(490,70,30,190);
  noStroke();

////HORIZONTAL
  ///////rect 1.2
  fill(#FCFCFA);
  rect(posXX,300,450,30);
  noStroke();
  
    ///////rect 2.2
  fill(#FCFCFA);
  rect(posXX-10,360,450,30);
  noStroke();
  
      ///////rect 3.2
  fill(#FCFCFA);
  rect(posXX-20,420,450,30);
  noStroke();
  ////////////////////////////////////////////
  posXX=posXX+velX;
  if(posXX<60 || posXX>100){
 velX=-velX;
}
}
if(key=='d' || key=='D'){
   background(#FCFCFA);
     ///////rect grande
  fill(#31302D);
  rect(40,40,510,450);
  noStroke();

String s = "USE WASD TO PLAY";
fill(50);
text(s, 40, 20, 150, 80);  // Text wraps within text box
String s2 = "PRESS ANY OTHER KEY TO RESET";
fill(50);
text(s2, 360, 20, 300, 80);  // Text wraps within text box
///////////////////////////////////////////////////////
////VERTICAL
    ///////rect 1
  fill(#FCFCFA);
  rect(70,70,30,190);
  noStroke();
  
    ///////rect 2
  fill(#FCFCFA);
  rect(130,70,30,190);
  noStroke();
  
      ///////rect 3
  fill(#FCFCFA);
  rect(190,70,30,190);
  noStroke();
  
    ///////rect 4
  fill(#FCFCFA);
  rect(250,70,30,190);
  noStroke();
  
      ///////rect 5
  fill(#FCFCFA);
  rect(310,70,30,190);
  noStroke();
  
    ///////rect 6
  fill(#FCFCFA);
  rect(370,70,30,190);
  noStroke();
  
    ///////rect 7
  fill(#FCFCFA);
  rect(430,70,30,190);
  noStroke();
  
      ///////rect 8
  fill(#FCFCFA);
  rect(490,70,30,190);
  noStroke();

////HORIZONTAL
  ///////rect 1.2
  fill(#FCFCFA);
  rect(posX-20,300,450,30);
  noStroke();
  
    ///////rect 2.2
  fill(#FCFCFA);
  rect(posX-10,360,450,30);
  noStroke();
  
      ///////rect 3.2
  fill(#FCFCFA);
  rect(posX,420,450,30);
  noStroke();
  ////////////////////////////////////////////
    posX=posX+velX;
 
if(posX<60 || posX>100){
 velX=-velX;
}
}
}