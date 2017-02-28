int posX = 400;
int posY = 400;
int posXX = 400;
int posYY = 400;
void setup(){
  size(800,800);
  background(250);

}
void draw(){
  posX = posX + (int)random(-10,10);
  posY = posY + (int)random(-10,10);
  
  
  
   if(dist(posX,posY,posXX,posYY)<100){
   line(posX, posY, posXX, posYY);
   }
   posXX = posX;
   posYY = posY;
  
  if(posX<0) posX=width;
  if(posY<0) posX=height;
   if(posX>width) posX=0;
   if(posY>height) posY=0;
  
  
}