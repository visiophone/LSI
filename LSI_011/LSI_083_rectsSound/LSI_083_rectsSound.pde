import processing.sound.*;
// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// var to store the amplitude
float amp=0.0;
float scaleAmp=0.0;
////
int nr=20;

float sizeW[]=new float[nr];
float sizeH[]=new float[nr];

void setup(){
 size(800,800); 
  noFill();
  stroke(255);
  rectMode(CENTER);
  
     //Load and play a soundfile and loop it
    sample = new SoundFile(this, "alvanoto_U_06.mp3");
    sample.loop();
    // Create and patch the rms tracker
    rms = new Amplitude(this);
    rms.input(sample);
}


void draw(){
  background(0);
  translate(width/2,height/2);
  
  //smooth amplitude value
   amp += (rms.analyze() - amp) * 0.2;
  scaleAmp=amp*2000;
  
  for(int i=0;i<nr;i++){
   if(i==0) {
     sizeW[i]+=(scaleAmp-sizeW[i])*0.4;
     sizeH[i]+=(scaleAmp-sizeH[i])*0.4;
   }
    
    else {
      sizeW[i]+=(sizeW[i-1]-sizeW[i])*0.4;
     sizeH[i]+=(sizeH[i-1]-sizeH[i])*0.4;
    }
    
    rect(0,0,sizeW[i],sizeH[i]);
    
  }
  
}