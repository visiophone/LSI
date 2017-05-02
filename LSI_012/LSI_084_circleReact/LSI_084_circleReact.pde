import processing.sound.*;
// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// var to store the amplitude
float amp=0.0;
float sizee=0;

void setup(){
 size(800,800); 
 
//Load and play a soundfile and loop it
sample = new SoundFile(this, "alvanoto_U_06.mp3");
sample.loop();
    
// Create and patch the rms tracker
rms = new Amplitude(this);
rms.input(sample);
     background(0);
}

void draw(){ 
  // background(0);
  noStroke();
  fill(0,10);
  rect(0,0,width,height);

   //stroke(0);
   fill(255);
 //smooth amplitude value
 amp += (rms.analyze() - amp) * 0.2;
 
 sizee=amp*2000;
 
 ellipse(400,400,sizee,sizee);
  
}