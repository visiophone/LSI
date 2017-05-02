import processing.sound.*;
// Declare the processing sound variables 
SoundFile sample;
FFT fft;
AudioDevice device;
// Define how many FFT bands we want
int bands = 64;
// Create a smoothing vector
float[] freq = new float[bands];
int nr=64;
float[] posX = new float[nr];
float[] posY = new float[nr];
float[] velX = new float[nr];
float[] velY = new float[nr];
float[] size = new float[nr];

void setup(){
 size(800,800);
 
 //Audio Start
  device = new AudioDevice(this, 44000, bands); //SETUP AUDIO DEVICE
  sample = new SoundFile(this, "alvanoto_U_06.mp3"); //LOAD SOUND FILE
  sample.loop();
  fft = new FFT(this, bands); //Analyser
  fft.input(sample);
 
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
 fft.analyze(); //analyse
 stroke(255);
 //update Positions and check borders
   for(int i=10;i<nr;i++){
 // smooth the FFT data by smoothing factor
 freq[i] += (fft.spectrum[i]*200 - freq[i]) * 0.2;
 

//Update pos
posX[i]=posX[i]+(velX[i]*freq[i]);
posY[i]=posY[i]+(velY[i]*freq[i]);
//check borders
if(posX[i]<0)posX[i]=width;
if(posX[i]>width)posX[i]=0;
if(posY[i]<0)posY[i]=height;
if(posY[i]>height)posY[i]=0;
  }
 

 
 // Draw circles
  for(int i=10;i<nr;i++){
   stroke(255,10,i*3,freq[i]*200); 
   for(int j=10;j<nr;j++){
    if(dist(posX[j],posY[j], posX[i],posY[i])<mouseY/4) line( posX[j],posY[j], posX[i],posY[i]);      
 
   }
   
    
noStroke();

fill(255,10,i*3,freq[i]*200);
ellipse(posX[i],posY[i],size[i],size[i]);


  }
  
  
}