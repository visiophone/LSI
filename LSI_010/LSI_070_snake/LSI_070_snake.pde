int nr=20;

int[] size = new int[nr]; 
float[] posX = new float[nr]; 
float[] posY = new float[nr]; 

void setup(){ 
  size(800,800);

}

void draw(){

background(0);


for(int i=0;i<nr;i++){ 
if (i==nr-1){
  size[nr-1]=50;
  posX[nr-1]=mouseX;
  posY[nr-1]=mouseY;
}
else{
 size[i]=size[i+1]+5;
 posX[i]+=(posX[i+1]-posX[i])*0.3;
 posY[i]+=(posY[i+1]-posY[i])*0.3; 
}
ellipse(posX[i],posY[i],size[i],size[i]);

}



}