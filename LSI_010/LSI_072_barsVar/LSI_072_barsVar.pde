int nr=20;

float[] posX = new float[nr]; 
float[] posY = new float[nr]; 

void setup(){ 
  size(800,800);
colorMode(HSB,360,100,100);
noStroke();
}

void draw(){

background(0);


for(int i=0;i<nr;i++){ 
if (i==0){ 
  posX[0]+=(mouseY-posX[0])*0.2;
  posY[0]=i*40;
}
else{
 posX[i]+=(posX[i-1]-posX[i])*0.2;
 posY[i]=i*40;
}

fill(i*2,100,100);
rect(width/2,posY[i],posX[i],30);
rect(width/2,posY[i],-posX[i],30);

}



}