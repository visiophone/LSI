float x=50;
float y=35;


float a = 0.0;
float s = 0.0;



void setup () {
  size (600,600);
  
}

void draw () {
  
  background (#FEFF03);
  
  if (mousePressed) {
    background (random(300), random(300), random(300));
  
}
  
  if (mousePressed) {
    
  a = a + 0.01;
  s = sin(a)*0.54;
  
  translate(width/2, height/2);
  scale(s);
 
  }
  
  
  
  if (mousePressed) {
  fill (#FF0F03);}   

  
  else{
    fill(0);} 
   
  
  noStroke();
  
  //vertical
  //rect1
  rect( 50, x, y, 240);
  
  //rect2
  rect( 125, x, y, 240);
  
  //rect3
  rect( 205, x, y,240);
  
  //rect4
  rect( 280, x, y, 240);
  
  //rect5
  rect( 360, x, y, 240);
  
   //rect6
  rect( 440, x, y, 240);
  
   //rect7
  rect( 515, x, y, 240);
  

 
  //horizontal
  //rect8
  rect(50, 340, 500, 40);
  
  //rect9
  rect(50, 420, 500, 40);
  
  //rect10
  rect(50, 500, 500, 40);
}
  
  



 void keyReleased(){
  if (key== 's' || key == 's');
  saveFrame("catarinaneves_###.tiff");
  endRecord();
 

}

  

  
  