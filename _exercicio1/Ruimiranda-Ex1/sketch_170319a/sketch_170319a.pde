void setup(){
background(0);
size(850,800);
}
void mouseDragged(){
if(mouseX<width/2) fill(0,mouseX,mouseY, 5);
if (mouseX>width/2) fill(0,mouseX,mouseY, 5);


if(mouseY<height/2) fill(0,mouseX,mouseY, 5);
if (mouseY>height/2) fill(0,mouseX,mouseY,5);
}

void draw(){


//verticais

rect (2*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (4*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (6*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (8*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (10*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (12*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (14*(width/17),2*(height/17),1*(width/17),7*(height/17));

//horizontais
rect (2*(width/17),10*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),12*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),14*(height/17),13*(width/17),1*(height/17));


//frame
noStroke();


rect (0,height/16,width/17,height);
rect (16*(width/17),0,(width/17)+1,height);
rect (0,0,width,height/16);
rect (0,15*(width/17),width,height/16);

}