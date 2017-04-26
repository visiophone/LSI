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
  size(640, 360);
  background(255);
  
  device = new AudioDevice(this, 44000, bands); //SETUP AUDIO DEVICE
  sample = new SoundFile(this, "alvanoto_U_06.mp3"); //LOAD SOUND FILE
  sample.loop();
  fft = new FFT(this, bands); //Analyser
  fft.input(sample);
}      

void draw() {
  // Set background color, noStroke and fill color
  background(0);
  fill(255);
  noStroke();

  fft.analyze(); //analyse

  for (int i = 0; i < bands; i++) {
    
    // smooth the FFT data by smoothing factor
    freq[i] += (fft.spectrum[i] - freq[i]) * 0.2;
    
    // draw the rects with a scale factor
    rect( i*8, height, 8, -freq[i]*1000 );
  }
}