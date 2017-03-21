int counter=0; //limite de passos a dar
int value = 0;
int w = 10; //largura rect
float h = random(0,100);//altura rect
int x = 0;//até onde vai (largura)
float y;//até onde vai (altura)
  
void setup(){
  
 size(820,800); 

}


void draw(){
 background(0);
 
//color changesss!
 fill(value,mouseX,mouseY);
 

 
//squares and lines
 rect(80,480,660,60);
 rect(80,720,mouseY,60);
 rect(80,600,mouseX,60);
 rect(80,60,60,height/2-40);
 rect(200,60,60,height/2-40);
 rect(320,60,60,height/2-40);
 rect(440,60,60,mouseY/2-40);
 rect(560,60,60,mouseY/2-40);
 rect(680,60,60,mouseY/2-40);
 
//xau stroke
for(int i = x;i<=width; i = i + w*2 ){
 noStroke();
 
//enquanto mousepressed
if(mousePressed == true){
 y = random(50,350); 

//cores purple random
fill(random(100,200), random(50,150), random(200,300));
}

//se não mousepressed:
else{
  y = 200;
}

//rect 
rect(i,y,w,h); 
}

}