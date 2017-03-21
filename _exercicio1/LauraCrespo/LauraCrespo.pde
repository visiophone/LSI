

void setup(){
size(800,800);
smooth();



}

void draw(){
  background(0);

fill (240,mouseX/2,mouseY/2);


rect(75,475,width-mouseY,55);

rect(75,595,width-mouseY,55);

rect(75,715,width-mouseY,55);

rect(75,55,55,mouseX/2);
rect(195,55,55,mouseX/2);
rect(315,55,55,mouseX/2);
rect(435,55,55,mouseX/2);
rect(555,55,55,mouseX/2);
rect(675,55,55,mouseX/2);

}

void keyReleased(){
 
  if(key == 's' || key == 'S')
    saveFrame("save-###.jpeg");

}