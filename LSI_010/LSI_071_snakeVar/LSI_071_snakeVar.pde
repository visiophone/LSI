int nr=50;

float[] size = new float[nr]; 
float[] posX = new float[nr]; 
float[] posY = new float[nr]; 

void setup(){ 
  size(800,800);
colorMode(HSB,360,100,100);
}

void draw(){

background(0);


for(int i=0;i<nr;i++){ 
if (i==0){
  size[0]=20;
  posX[0]=mouseX;
  posY[0]=mouseY;
}
else{
 
  float varSize= dist(posX[i],posY[i],posX[i-1],posY[i-1]);
  
 size[i]=size[0]+varSize*2;
 posX[i]+=(posX[i-1]-posX[i])*0.25;
 posY[i]+=(posY[i-1]-posY[i])*0.25; 

}
fill(i*2,100,100);
ellipse(posX[i],posY[i],size[i],size[i]);

}



}