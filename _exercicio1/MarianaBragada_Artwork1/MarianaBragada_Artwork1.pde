float sizee= 0;
float step=random(0.1,3);

boolean black=true;



void setup(){
  
  size(800,800);
 // background(0);
  strokeCap(SQUARE);
}

void draw(){
  
  background(0);
  //stroke(0,300);
  stroke(#F2D811);
line(mouseX,mouseY,width/2, height/2);


//line(0+mouseX, mouseY, 800-mouseX, mouseY);
  
  stroke(255);
//verticais
 line(100,400,100, 75); 
 //strokeWeight(60); 
 stroke(0, mouseX, mouseY);
 
 line(100,400,100, 75); 
 //strokeWeight(60); 
 stroke(0, mouseX, mouseY);
 
 line(200,400,200, 75); 
 strokeWeight(60); 
 
 line(300,400,300, 75); 
 strokeWeight(60); 
 fill(mouseX);
 line(400,400,400, 75); 
 strokeWeight(60); 

 

 
 //line(550,400,550, 500); 
 strokeWeight(60);
 //line(700,400,500, 700); 
 strokeWeight(60);
 line(500,400,500, 75); 
 strokeWeight(60);
 line(600,400,600, 75); 
 strokeWeight(60);
 line(700,400,700, 75); 
 strokeWeight(60);
 
 //horizontais 
 stroke(#F2D811);
 rect(100,mouseY,400,100); 
 
 
 rect(mouseX,200,300,300); 
}
 
 //////////// circulo
 void mouseDragged(){
 
  if(black==true) stroke(0,50);
  else stroke(255,150);
  
  float varr = map(sizee,0,800,0,150);
  float centerRandX=random(-varr,varr);
  float centerRandY=random(-varr,varr);
  fill(#F00F21);
  ellipse(400+centerRandX,400+centerRandY, sizee,sizee);
  sizee=sizee+step;
 
 
 // println(centerRand);
  
  if(sizee>600){
   sizee=0;
   stroke(random(0,150),50);
    black=!black;
    step=random(0.1,3);
  



}
}
 