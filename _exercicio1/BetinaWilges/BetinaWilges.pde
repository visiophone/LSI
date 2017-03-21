float posX=0; 
float posY=0;
int move=15;
int randd=60;

void setup(){
size(800,800);
background(0);
stroke(255);

}

void draw(){
  
 if(posY<height){
    
 if(posX>width){posX=0; posY=posY+move;} 
  
    randd=int(random(6));
    if(randd==0){line(posX,posY,posX+move,posY+move);}
    if(randd==1 || randd==2 || randd==3){line(posX,posY+move,posX+move,posY);}
      
 posX=posX+move; 
  
 }
}

void mousePressed(){
background(posY/2,200,200);
posX=0;
posY=0;
move=int(random(10,20));
}