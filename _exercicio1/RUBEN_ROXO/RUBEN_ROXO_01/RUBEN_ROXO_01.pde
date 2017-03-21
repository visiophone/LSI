void setup(){
size(800,800);
background(150);
}


void draw(){
  noStroke();
  
rect (1*(width/17),1*(height/17), 16*(width/17), 16*(height/17));
//frame
fill(255);
rect (0,0,width/17,height);
rect (16*(width/17)+2,0,width/17,height);
rect (0,0,width,height/17);
rect (0,16*(width/17)+2,width,height/17);

//verticais
fill(255);
rect (2*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (4*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (6*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (8*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (10*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (12*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);
rect (14*(width/17),2*(height/17),1*(width/17),mouseY-(random(-50,50))-130);


//horizontais pretas
fill(0);
rect (2*(width/17),10*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),12*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),14*(height/17),13*(width/17),1*(height/17));

//horizontais
fill(255);
rect (2*(width/17),10*(height/17),mouseX-(random(-50,50))-130,1*(height/17));
rect (2*(width/17),12*(height/17),mouseX-(random(-50,50))-130,1*(height/17));
rect (2*(width/17),14*(height/17),mouseX-(random(-50,50))-130,1*(height/17));


//horizontais pretas
fill(0);
rect (2*(width/17),1*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),9*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),11*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),13*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),15*(height/17),13*(width/17),1*(height/17)+2);

//verticais pretas
fill(0);
rect (1*(width/17),2*(height/17),1*(width/17),14*(height/17));
rect (15*(width/17),2*(height/17),1*(width/17)+2,14*(height/17));
}


/////
void keyPressed(){ 
  
saveFrame("save-###.png");
}