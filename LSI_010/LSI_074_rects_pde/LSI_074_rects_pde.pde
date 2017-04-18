int nr=20;

float sizeW[]=new float[nr];
float sizeH[]=new float[nr];

void setup(){
 size(800,800); 
  noFill();
  stroke(255);
  rectMode(CENTER);
}


void draw(){
  background(0);
  translate(width/2,height/2);
  
  for(int i=0;i<nr;i++){
   if(i==0) {
     sizeW[i]+=(mouseX-sizeW[i])*0.4;
     sizeH[i]+=(mouseY-sizeH[i])*0.4;
   }
    
    else {
      sizeW[i]+=(sizeW[i-1]-sizeW[i])*0.4;
     sizeH[i]+=(sizeH[i-1]-sizeH[i])*0.4;
    }
    
    rect(0,0,sizeW[i],sizeH[i]);
    
  }
  
}