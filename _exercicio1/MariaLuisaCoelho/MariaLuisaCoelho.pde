float posX=0;
float posY=50;

float posXX=650;
float posYY=50;


void setup() {
  size(750,800);
  background(0);
}

void draw() {


 //cor com o movimento do rato
 fill(mouseX/2, mouseY/2,255);
 
 posX=posX+5;
 
  rect(50,50,50,mouseX/2);
  rect(150,50,50,300);
  rect(250,50,50,mouseX/2);
  rect(350,50,50,300);
  rect(450,50,50,mouseX/2);
  rect(550,50,50,300);
  rect(posX,posY,50,300);
  rect(650,50,50,mouseX/2);
  
 
  
  rect(50,400,650,50);
  rect(50,500,650,50);
  rect(50,600,650,50);

 
}
  void mouseClicked(){
    background(255); 
   }
   
    void keyReleased(){
 
  //if Key pressed is P or p, print a frame
  if(key == 's' || key == 'S')
    saveFrame("save-###.jpeg");

}