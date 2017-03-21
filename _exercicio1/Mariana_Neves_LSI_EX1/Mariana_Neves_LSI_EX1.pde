////MARIANA NEVES - TURMA DA TARDE LSI
////OBRA DE REFERÊNCIA - "Black Bands In Two Directions" - Sol Lewitt, 1990


float posX=100;
float posY=83;
float posYY=83;
float move=2;
float moveH=6;

float posHY=328;
float posXX=posY; 
float corlinhas=255;


void setup (){
  size (589, 542);
  background (251, 250, 244);

}
 
void draw(){
  fill(0);
  rect(29,34,525,481);
  

 
 ////Linha 1
  strokeWeight(34);
  strokeCap(SQUARE);
  stroke(corlinhas);
  
    

  
  
  line(posX, posY, posX, posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};


///Linha V2

  line(posX+63, posY, posX+63, posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};

////Linha V3
  line(posX+(63*2), posY, posX+(63*2), posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};
 
 ////Linha V4
  line(posX+(63*3), posY, posX+(63*3), posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};
 
////Linha V5
  line(posX+(63*4), posY, posX+(63*4), posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};
 
////Linha V6
  line(posX+(63*5), posY, posX+(63*5), posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};
 
 ////Linha V7
  line(posX+(63*6), posY, posX+(63*6), posYY);
 posYY=posYY+move;
 if (posYY>274) {move=0; posYY=274;};
 
 
 /////////////////////LINHAS DE BAIXO
 
 ///Linha H1
 line(posY, posHY, posXX, posHY);
 posXX=posXX+moveH;
 if (posXX>(posX+(63*6)+17)) {move=0; posXX=(posX+(63*6)+17);}

 ///Linha H2
 line(posY, posHY+63, posXX, posHY+63);
 posXX=posXX+moveH;
 if (posXX>(posX+(63*6)+17)) {move=0; posXX=(posX+(63*6)+17);}
 
  ///Linha H3
 line(posY, posHY+(63*2), posXX, posHY+(63*2));
 posXX=posXX+moveH;
 if (posXX>(posX+(63*6)+17)) {move=0; posXX=(posX+(63*6)+17);}
}

////////////// INTERATIVIDADE
  void mouseMoved(){ ////MUDANÇA DE CORES - RATO EM MOVIMENTO
  stroke(mouseX, mouseY, 50); 
  }
  
  void mousePressed(){///RANDOM POSIÇÃO/EXTENSÃO BARRAS consoante o mouse
    fill(random(0,255));
  rect(29,34,525,481);
   posX=mouseX;
    posY=mouseY;
    posYY=mouseY;
    move=random(5,8);
    moveH=random(2,10);
    posHY=random(200,400);
    posXX=mouseX; 
  }
  void keyReleased(){
    if(key=='R' || key=='r'){
posX=100;
posY=83;
posYY=83;
move=2;
moveH=6;

posHY=328;
posXX=posY; 
corlinhas=255;
    }
    if(key=='P' || key=='p'){
    saveFrame("still####.jpg");
    println("saving still"); }
 }
  
  
 