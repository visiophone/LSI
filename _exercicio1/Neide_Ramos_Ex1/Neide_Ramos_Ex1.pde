//Neide Ramos _ Exerício 1 black flag

float posX=350;
float posY=110;
float _posY = posY;
float velX=posY+5;

float posX1=350;
float posY1=130;
float _posY1 = posY1;
float vel1X=posY+5;

float posX2=350;
float posY2=110;
float _posY2 = posY2;
float velX2=posY2+5;

float posX3=350;
float posY3=130;
float _posY3 = posY3;
float velY3=posY3+5;

boolean retorno = false;
boolean save=false;

void setup(){
  size(600,600);
  background(0);
}
  
void draw(){
 fill(255);
 rect(50, 50, 500, 500); //rectângulo fundo
 noStroke(); fill(0); 
 rect(100,_posY,90,posX);
 rect(200,_posY1,90,posX1);
 rect(300,_posY2,90,posX2);
 rect(400,_posY3,90,posX3);
 
 //deslocar rectângulos com mouse click
 
 if (mousePressed && retorno==false) 
 {
   _posY=_posY+5;
   _posY1 = _posY1-5;
   _posY2=_posY2+5;
   _posY3 = _posY1-5;
 }
 
 if (mousePressed && retorno == true && _posY >= posY)
 {
  _posY = _posY-5;
  _posY1 = _posY1+5;
  _posY2 = _posY2-5;
  _posY3 = _posY3+5;
 }
 if (_posY>=200) {retorno=true;}
 if (_posY<=110){retorno=false;}
 }
 
void keyReleased(){  
 if (key == 's' || key == 'S')
 {
  saveFrame("save-###.jpg"); }
}