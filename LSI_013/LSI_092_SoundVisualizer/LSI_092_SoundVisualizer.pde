import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
FFT fft;
AudioDevice device;

int mode=0;


// Define how many FFT bands we want
int bands = 128;

// Create a smoothing vector
float[] freq = new float[bands];


void setup() {
  size(800, 800);
  background(255);
  
  device = new AudioDevice(this, 44000, bands); //SETUP AUDIO DEVICE
  sample = new SoundFile(this, "alvanoto_U_06.mp3"); //LOAD SOUND FILE
  sample.loop();
  fft = new FFT(this, bands); //Analyser
  fft.input(sample);
}      

void draw() {

  background(0);
  fft.analyze(); //analyse
  
/////// MODE 1
if(mode==1){
  fill(255);
  noStroke();
  for (int i = 0; i < bands; i++) {    
    // smooth the FFT data by smoothing factor
    freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;    
    // draw the rects with a scale factor
    rect( i*8, height, 8, -freq[i]*5000 );
  }
}

/////// MODE 2
if(mode==2){
  stroke(255);
  for (int i = 0; i < bands; i++) {    
    // smooth the FFT data by smoothing factor
    freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;    
    // draw the rects with a scale factor
    line(0,height/2+freq[i]*1000,width,height/2+freq[i]*1000);
    line(0,height/2-freq[i]*1000,width,height/2-freq[i]*1000);
  }
}

/////// MODE 3
if(mode==3){
  stroke(255);
  for (int i = 0; i < bands; i++) {    
    // smooth the FFT data by smoothing factor
    freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;    
    // draw the rects with a scale factor
    line(0,i*8,width/2,i*8+freq[i]*3000);
    line(width,i*8,width/2,i*8+freq[i]*3000);
 
  //  line(0,height/2-freq[i]*1000,width,height/2-freq[i]*1000);
  }
}



}


//////////////////////////////////////////////////

void keyPressed(){
  if (key == '0') mode=0;
  if (key == '1') mode=1;
  if (key == '2') mode=2;
  if (key == '3') mode=3;
  
}