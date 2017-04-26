int nr=400;

float[] posX = new float[nr];
float[] posY = new float[nr];
float[] velY = new float[nr];
float[] velX = new float[nr];


void setup(){
  size(800,800);
  
   for(int i=0;i<nr;i++){
   posX[i]=random(width);
   posY[i]=random(width);
   velY[i]=random(1,4);
   }  
   background(0);
}

void draw(){
 // background(0);
 noStroke();
 fill(0,10);
 rect(0,0,width,height);
  
  fill(255);
  for(int i=0;i<nr;i++){
    
    posY[i]=posY[i]+velY[i];
   fill(i);
   ellipse(posX[i],posY[i],5,5);
  
  //
  if(posY[i]>height+5){
    posY[i]=-5;
    posX[i]=random(width);
  }
  }
  
}