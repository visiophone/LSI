float posX=0;
int move=0;

int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape    
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape
int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


void setup(){
size(800,800);
background(0);

frameRate(30);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
}

void draw(){
  
  

//verticais
rect (2*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (4*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (6*(width/17),2*(height/17),1*(width/17),7*(height/17));

//horizontal
rect (2*(width/17),12*(height/17),13*(width/17),1*(height/17));

xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
ellipse(xpos, ypos, rad, rad);

//verticais
rect (8*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (10*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (12*(width/17),2*(height/17),1*(width/17),7*(height/17));
rect (14*(width/17),2*(height/17),1*(width/17),7*(height/17));

//horizontais
rect (2*(width/17),10*(height/17),13*(width/17),1*(height/17));
rect (2*(width/17),14*(height/17),13*(width/17),1*(height/17));



}

void mouseClicked(){
  
strokeWeight(random(1,10)); //random line wight
posX=posX+move; //update line position

colorMode(HSB, 100);
stroke( map(random(0,200), 50,150, 70,100), 100,100); 
  
background( map(random(0,200), 50,150, 70,100), 100,100);
fill( map(random(0,200), 50,150, 70,100), 100,100);
}