import processing.sound.*;
// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// var to store the amplitude
float amp=0.0;


int nr=50;
float [] sizee = new float [nr];

void setup(){
 size(800,800); 
 
//Load and play a soundfile and loop it
sample = new SoundFile(this, "alvanoto_U_06.mp3");
sample.loop();
    
// Create and patch the rms tracker
rms = new Amplitude(this);
rms.input(sample);
    
}

void draw(){ 
 background(0);

   stroke(255);
  noFill(); 
 //smooth amplitude value
 amp += (rms.analyze() - amp) * 0.2;
 
for (int i=0 ; i<nr;i++){
  
  if(i==0)sizee[0]=amp*1500+50;
  else { sizee[i]+=(sizee[i-1]-sizee[i])*0.4;
    
  }
  
  fill(255,10,100,sizee[i]/10);
  ellipse( i*20, width/2,sizee[i],sizee[i]);
}
  
}