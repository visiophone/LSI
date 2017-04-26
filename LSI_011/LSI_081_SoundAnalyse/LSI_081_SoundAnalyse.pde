import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;

// var to store the amplitude
float amp=0.0;
float scaleAmp=0.0;

void setup() {
    size(800,800);

    //Load and play a soundfile and loop it
    sample = new SoundFile(this, "alvanoto_U_06.mp3");
    sample.loop();
    
    // Create and patch the rms tracker
    rms = new Amplitude(this);
    rms.input(sample);
}      

void draw() {
    // BackgournColor, changes with Amp
    background(amp*300);
  
     textSize(20);
     text("AMPLITUDE",30,100);
     textSize(100);
     text(rms.analyze(),30,200);
     
    //smooth amplitude value
    amp += (rms.analyze() - amp) * 0.1;
     
     textSize(20);
     text("SMOOTH AMPLITUDE",30,350);
     textSize(100);
     text(amp,30,450);
     
     scaleAmp=amp*2000; //scale amp
     
     textSize(20);
     text("SCALED AMPLITUDE",30,500);
     textSize(100);
     text(scaleAmp,30,600);
     
      stroke(255);
     line(0,scaleAmp,width,scaleAmp);
     
}