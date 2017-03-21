void setup(){
size (800,800,P3D);
fill(255);
}

void draw(){
lights();
background(0);
//position of the camera through 
camera(30.0, mouseY, 210.0, //setting the eye position
width/2, width/2, 0.0, //setting the  center of the scene
0.0, 10.0, 0.0); //axis is facing upward

//quadradocentro  
fill(#FFDBDB); 
rect(50,50,700,700);

//vertical 
stroke(255);
strokeWeight(50);
strokeCap(SQUARE);
line(200,100, 200, 400); 
line(300,100, 300, 400); 
line(400,100, 400, 400);
line(500,100, 500, 400); 
line(600,100, 600, 400); 

//horrizontal
stroke(255);
strokeWeight(50);
strokeCap(SQUARE);
line(mouseY,450,width-mouseY, 450); 
line(mouseY,550, width-mouseY, 550); 
line(mouseY,650, width-mouseY, 650);
 
}