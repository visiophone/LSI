float rotM=0;
float rotH=0;
float rotS=0;

void setup(){
  
 size(800,800); 
  
}


void draw(){
  background(0);
  stroke(255);
  textSize(20);
 text(hour()+" : "+minute(),20,30);
  translate(width/2,height/2);
  rotate(radians(-90));
 
  
  //segundos
  strokeWeight(1);
  pushMatrix();
  rotS=map(second(),1,60,0,360);
  rotate(radians(rotS));
  line(0,0,200,0);  
  popMatrix();
  
  //Horas
  strokeWeight(3);
  pushMatrix();
  rotH=map(hour(),0,24,0,720);
  rotate(radians(rotH));
  line(0,0,150,0);  
  popMatrix();
  
  //Minutos
  strokeWeight(3);
  pushMatrix();
  rotM=map(minute(),1,60,0,360);
  rotate(radians(rotM));
  line(0,0,200,0);  
  popMatrix();


//Relogio
for(int i=0;i<360;i=i+360/60){
 pushMatrix();
  rotate(radians(i));
 line(230,0,240,0);  
 popMatrix(); 
}

ellipse(0,0,20,20);

}