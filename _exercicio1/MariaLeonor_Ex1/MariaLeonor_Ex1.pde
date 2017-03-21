void setup(){
size(800,800);


}


void draw(){
background(162,181,255); 
  

strokeWeight (40);
strokeCap(SQUARE);

//horizontal 
stroke(mouseX,mouseX,300,30);
line(50,100, 750, 100); 
line(50,200, 750, 200); 
line(50,300, 750, 300); 

//verical
stroke(mouseY,mouseY,300,30);
line (730,750,730,350);
line(620,750, 620, 350); 
line(510,750, 510, 350); 
line(400,750, 400, 350);
line(290,750, 290 ,350);
line(180,750, 180, 350);
line(70,750, 70, 350);
  
}

void keyReleased(){ 
if (key == 's' || key == 'S'){
  
saveFrame("exercÃƒÂ­cio1_###.jpg"); 

}
}