float retA=160;
float retB=280;
float retC=400;
float retD=520;
float retE=640;
float retF=760;
float retG=160;
float retH=700;
float retI=160;
float retJ=700;
float velret=-1;
float velretB=-7;
float velretC=-3;
float corR=50;
float corG=100;
float corB=255;


void setup(){
  size(800,800);
  background(0);
}

void draw(){
  
  fill(corR,corG,corB);
  rect(100, 100, 600, 600);
  if(velret>0){corR=255;corG=230;corB=40;}
  if(velret<0){corR=50;corG=100;corB=255;}
  
  fill(0);
  retA=retA+velret;
  retB=retB+velret;
  retC=retC+velret;
  retD=retD+velret;
  retE=retE+velret;
  retF=retF+velret;
  
  
  if(retA<40){retA=760;}
  if(retB<40){retB=760;}
  if(retC<40){retC=760;}
  if(retD<40){retD=760;}
  if(retE<40){retE=760;}
  if(retF<40){retF=760;}
  
  if(retA>760){retA=40;}
  if(retB>760){retB=40;}
  if(retC>760){retC=40;}
  if(retD>760){retD=40;}
  if(retE>760){retE=40;}
  if(retF>760){retF=40;}
  
  rect(retA,150,60,250);
  rect(retB,150,60,250);
  rect(retC,150,60,250);
  rect(retD,150,60,250);
  rect(retE,150,60,250);
  rect(retF,150,60,250);
  
  fill(0);
  if(retG<-380){retG=700;}
  if(retH<-380){retH=700;}
  if(retG>700){retG=-380;}
  if(retH>700){retH=-380;}
  retG=retG-velretB;
  retH=retH-velretB;
  rect(retG,460,480,60);
  rect(retH,460,480,60);
  
  fill(0);
  if(retI<-380){retI=700;}
  if(retJ<-380){retJ=700;}
  if(retI>700){retI=-380;}
  if(retJ>700){retJ=-380;}
  retI=retI+velretC;
  retJ=retJ+velretC;
  rect(retI,580,480,60);
  rect(retJ,580,480,60);}
  
void mouseClicked(){
  velret=-velret;
  velretB=-velretB;
  velretC=-velretC;}
  