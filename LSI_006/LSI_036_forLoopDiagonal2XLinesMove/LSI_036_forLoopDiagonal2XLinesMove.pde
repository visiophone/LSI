float posYMoveA =0;
float posYMoveB =0;

void setup(){
size(800,800);  
  
}

void draw(){
 
background(0);

noFill();
stroke(255);  

posYMoveA = posYMoveA+mouseX/10;
if(posYMoveA>height) posYMoveA=0;

posYMoveB = posYMoveB+mouseY/10;
if(posYMoveB>height) posYMoveB=0;

for (int i=0; i<height; i=i+20){  
  line(0,i,width/2,posYMoveA );  
}

for (int i=0; i<height; i=i+20){ 
  line(width,i,width/2,posYMoveB);  
}

  
}