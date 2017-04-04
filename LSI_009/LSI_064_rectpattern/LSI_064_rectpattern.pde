float rota1=0;
float size=500;

float rota2=0;



void setup(){
  
 size(800,800); 
  rectMode(CENTER);
}


void draw(){
  
  translate (width/2,height/2);
  stroke(255);
  background(0);
  




  size=map(mouseY,0,height,300,600);
  rotate(rota1);
 
 //println(size);
  
  
  
  for(int i=0;i<360;i=i+360/240){
    
    pushMatrix();
    rotate(i*rota2);
    fill(i/2);
    rect (0,0,size-i,size-i);
   //line(0,0,size-i,size-i);
    popMatrix();
    //line(0,0,0,i);
  }

rota1+=0.005;
rota2+=0.0005;

}