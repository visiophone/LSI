import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// var to store the amplitude
float amp=0.0;
float scaleAmp=0.0;

int nr=20;
float[] posX = new float[nr]; 
float[] posY = new float[nr]; 

void setup(){ 
  size(800,800);
colorMode(HSB,360,100,100);
noStroke();
//Audio
//Load and play a soundfile and loop it
sample = new SoundFile(this, "alvanoto_U_06.mp3");
sample.loop();   
// Create and patch the rms tracker
rms = new Amplitude(this);
rms.input(sample);
}

void draw(){

background(0);

//Read Sound amp//smooth amplitude value
amp += (rms.analyze() - amp) * 0.2;
scaleAmp=amp*1000;

for(int i=0;i<nr;i++){ 
if (i==0){ 
  posX[0]+=(scaleAmp-posX[0])*0.2;
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