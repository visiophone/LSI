import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
FFT fft;
AudioDevice device;


// Define how many FFT bands we want
int bands = 128;

// Create a smoothing vector
float[] freq = new float[bands];


void setup() {
  size(800, 800);
  background(255);
  strokeCap(SQUARE);
  
  device = new AudioDevice(this, 44000, bands); //SETUP AUDIO DEVICE
  sample = new SoundFile(this, "alvanoto_U_06.mp3"); //LOAD SOUND FILE
  sample.loop();
  fft = new FFT(this, bands); //Analyser
  fft.input(sample);
}      

void draw() {
  // Set background color, noStroke and fill color
  background(0);
  stroke(255);


  fft.analyze(); //analyse

  for (int i = 0; i < 8; i++) {   
    // smooth the FFT data by smoothing factor
freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;
strokeWeight( freq[i]*2000);
line(0,i*100,width/3,i*100);
  }
  
for (int i = 8; i < 108; i++) {   
// smooth the FFT data by smoothing factor
freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;
strokeWeight( freq[i]*2000);
line(width/3,(i-8)*8,(width/3)*2,(i-8)*8);
  }
  
  for (int i = 108; i < 128; i++) {   
// smooth the FFT data by smoothing factor
freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;
strokeWeight( freq[i]*2000);
line((width/3)*2,(i-108)*40,width,(i-108)*40);
  }
  
  
}