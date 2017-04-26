import processing.sound.*;
// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// var to store the amplitude
float amp=0.0;
float scaleAmp=0.0;

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
   
    //Load and play a soundfile and loop it
    sample = new SoundFile(this, "alvanoto_U_06.mp3");
    sample.loop();
    
    // Create and patch the rms tracker
    rms = new Amplitude(this);
    rms.input(sample);
}

void draw(){
 // background(0);
 noStroke();
 fill(0,10);
 rect(0,0,width,height);
 
 //smooth amplitude value
 amp += (rms.analyze() - amp) * 0.2;
  
  fill(255);
  for(int i=0;i<nr;i++){
    
    posY[i]=posY[i]+(velY[i]*amp*2);
   fill(i);
   ellipse(posX[i],posY[i],5,5);
  
  //
  if(posY[i]>height+5){
    posY[i]=-5;
    posX[i]=random(width);
  }
  }
  
}