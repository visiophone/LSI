int nr=100;

float[] posX = new float[nr];
float[] posY = new float[nr];
float[] velX = new float[nr];
float[] velY = new float[nr];
float[] size = new float[nr];

void setup(){
 size(800,800);
 
 for(int i=0;i<nr;i++){
   posX[i]=random(width);
   posY[i]=random(width);
   velX[i]=random(-2,2);
   velY[i]=random(-2,2);
   size[i]=random(5,15); 
 }
}

void draw(){
 background(0);
 stroke(255);
 //update Positions and check borders
   for(int i=0;i<nr;i++){
//Update pos
posX[i]=posX[i]+velX[i];
posY[i]=posY[i]+velY[i];
//check borders
if(posX[i]<0)posX[i]=width;
if(posX[i]>width)posX[i]=0;
if(posY[i]<0)posY[i]=height;
if(posY[i]>height)posY[i]=0;
  }
 
 // Draw circles
  for(int i=0;i<nr;i++){
fill(255);
ellipse(posX[i],posY[i],size[i],size[i]);

fill(0);
if(dist(posX[i],posY[i],mouseX,mouseY)<200){line(posX[i],posY[i],mouseX,mouseY);}
ellipse(mouseX,mouseY,50,50);
  }
  
  
}