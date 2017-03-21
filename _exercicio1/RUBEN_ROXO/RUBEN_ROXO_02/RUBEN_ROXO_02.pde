//quadrados
float posX=random(400,400);
float posY=random(400,400);

//randomNumber
int counter=0;
int randNumber=int(random(4));

float move=20;

void setup(){
  size(800, 800);
  background(255);
}


void draw(){
  
  
  //PRIMEIRO
if(counter<200) {
 randNumber=int(random(5));
  println(randNumber);
//horizontais e verticais
if(randNumber==0){posX=posX+move;}
if(randNumber==1){posX=posX-move;}
if(randNumber==2){posY=posY+move;}
if(randNumber==3){posY=posY-move;}
if(randNumber==4){posY=posY-move;}
fill(0);
noStroke();
rect(posX,posY,20,20);
}


//SEGUNDO
if(counter<100) {
 randNumber=int(random(5));
//horizontais e verticais
if(randNumber==0){posX=posX+move;}
if(randNumber==4){posX=posX-move;}
if(randNumber==2){posY=posY+move;}
if(randNumber==3){posY=posY-move;}
if(randNumber==1){posY=posY-move;}
fill(255);
noStroke();
rect(posY,posX,20,20);
counter=counter+(1/10);
}

  //TERCEIRO
if(counter<200) {
 randNumber=int(random(5));
  println(randNumber);
//horizontais e verticais
if(randNumber==0){posX=posX+move;}
if(randNumber==1){posX=posX-move;}
if(randNumber==2){posY=posY+move;}
if(randNumber==3){posY=posY-move;}
if(randNumber==4){posY=posY-move;}
fill(0);
noStroke();
rect(posX,posY,20,20);
}

//checking limits
if(posX<0)posX=width;
if(posX>width)posX=400;
if(posY<0)posY=height;
if(posY>height)posY=400;

if(posY>height)posX=400;
if(posY<0)posX=400;
if(posX>width)posY=400;
if(posX<0)posY=400;
}

void mousePressed(){
 background(255); }
  
/////
void keyPressed(){ 
saveFrame("save-###.png");
}

//RUBEN ROXO, 2017, MARCH.