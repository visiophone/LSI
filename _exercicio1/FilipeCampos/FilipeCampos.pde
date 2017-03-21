float pos1=300;


void setup(){
size(850,800);
}

void draw(){
background(0);
noStroke();

fill(0);
rect(50,50,750,700);


rectMode(CORNER);
float mx2 = constrain(mouseY, 0, 600);
fill(0,mouseY/4,mouseY/4);
rect(100,100,50,mx2);
fill(0,0,mouseY/4);
float mx1 = constrain(mouseY, 0, 400);
rect(200,100,50,mx1);
fill(0,mouseY/4,mouseY/4);
float mx0 = constrain(mouseY, 0, 300);
rect(300,100,50,mx0);
fill(0,0,mouseY/4);
rect(400,100,50,mx0);
fill(0,mouseY/4,mouseY/4);
rect(500,100,50,mx0);
fill(0,0,mouseY/4);
rect(600,100,50,mx1);
fill(0,mouseY/4,mouseY/4);
rect(700,100,50,mx2);

rectMode(CENTER);
float mx5 = constrain(mouseY,0,250);
fill(0,mouseY/4,mouseY/4);
rect(width/2,475,mx5,50);
float mx4 = constrain(mouseY,0,450);
fill(0,0,mouseY/4);
rect(width/2,575,mx4,50);
fill(0,mouseY/4,mouseY/4);
rect(width/2,675,mx4,50);
}