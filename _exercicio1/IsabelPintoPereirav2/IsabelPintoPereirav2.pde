float posRecX1= 80;
float _posRecX1 = posRecX1;

float posYa=-70;
float _posYa=posYa;
float X10= 80;
float _X10=X10;
float Y10= 40;
float X20=160;
float _X20=X20;
float X30=80;
float _X30= X30;
float X40=240;
float _X40= X40;
float X50= 80;
float _X50= X50;
float X60= 320;
float _X60= X60;
float X70= 80;
float _X70=X70;
float X80= 400;
float _X80=X80;
float X90= 480;
float _X90= X90;

boolean retornar = false;
boolean drawTime =false;

void setup(){
  size(600,600);
}

  void draw(){
    background(255);
   fill(0);
  rect(30,30,540,540);  
    

  fill(255);
  stroke(255);
  rect(_posRecX1,_posYa,40,310);
  fill(167);
  stroke (167);
  rect(_X20,70,40,170);
  fill(255);
  stroke(255);
  rect(_X40,70,40,170);
  stroke (167);
  fill (167);
  rect(_X60,70,40,170);
  fill(255);
  stroke(255);
  rect(_X80,70,40,170);
  fill(167);
  stroke (167);
  rect(_X90,70,40,170);
  


stroke(255);
fill(255);
  rect(_X10,290,440,Y10);
fill(167);
stroke(167);
  rect(_X30,360,440,40);
stroke(255);
fill(255);
  rect(_X50,430,440,40);
stroke(167);
fill(167);
  rect(_X70,500,440,40);
 fill(0);
 noStroke();
  rect(31,30,538,40);
    stroke(255);
fill(255);
    rect(0,0,600,30);


if(mousePressed && retornar==false)
{ 
  _posRecX1 = _posRecX1 +5;
  _X20-=5;
  _X40+=5;
  _X60-=5;
  _X80+=5;
  _X90-=5;

}
if(mousePressed && retornar==true && _posRecX1>=posRecX1) 
{
  _posRecX1 = _posRecX1-5;
  
  _X20+=5;
  _X40-=5;
  _X60+=5;
  _X80-=5;
  _X90+=5;

}

if(mousePressed)
{
_X10-=5;
_X30+=5;
_X50-=5;
_X70+=5;
}

if(mousePressed && drawTime ==true)
{
  if(_posYa<=50)
  _posYa+=5;
}


if(_posRecX1>=480) {retornar = true;}
  
 if (_posRecX1<=posRecX1&& retornar==true) drawTime=true;
  }