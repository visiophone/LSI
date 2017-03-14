float g = 0;

float b = 255 ;

void setup (){

  
size(500, 500); 
background (0);
   
   
   
smooth ();
}

void draw (){
  
  fill (20+mouseY/2);
  rect (0,0,500,500);
 
 stroke(255);


 for(int i=0; i<500; i=i+10){  

   float high = random (20,470);
  
    //println(high);
   stroke (i,g,b);
   
   line (i,0, i, high);
 
 
 }
  

 ////////////////////////////////////

  
/////////////////////////////////////
}

void mousePressed() {
  
  g = random (0,255);
   b = random (0,255);
  
}