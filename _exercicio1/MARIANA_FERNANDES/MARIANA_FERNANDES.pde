bwWfloat posX=0;
float posY=0;



void setup (){
  
size (580,500);
background (0);

String s = "PRESS 'B' OR 'W' TO INVERT COLOURS";
text(s, 65, 20, 250, 80);  
String s2 = "PRESS 'S' TO SAVE AN IMAGE";
text(s2, 348, 20, 300, 80); 
}



void draw (){
  
  background (0);
  fill(255);
  stroke(255);
  
   /* //frame
  rect (0,0,30,590);
  rect (550,0,30,590);
  rect (0,0,590,30);
  rect (0,475,590,30);*/
  

 
  //retangulos de cima
   fill(255);
   rect (64,61, 35, posY+mouseY);
   rect (134,61, 35, posY+mouseY);
   rect (204,61, 35, posY+mouseY);
   rect (274,61, 35, posY+mouseY);
   rect (344,61, 35, posY+mouseY);
   rect (414,61, 35, posY+mouseY);
   rect (484,61, 35, posY+mouseY);
   
   //retangulos de baixo
   rect (0,305, 20, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (0,340, 20, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,445, 455, posY-mouseY);
      
   
 

     
    
   //sequencia com fundo branco
   if (mouseY<40 || mouseY>560){
    
     
    background(255);
    stroke(0);
    fill(0);
  
    //retangulos de cima
  
   rect (65,61, 35, posY+mouseY);
   rect (135,61, 35, posY+mouseY);
   rect (205,61, 35, posY+mouseY);
   rect (275,61, 35, posY+mouseY);
   rect (345,61, 35, posY+mouseY);
   rect (415,61, 35, posY+mouseY);
   rect (485,61, 35, posY+mouseY);
   
   //retangulos de baixo
 
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455, posY-mouseY);
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455,posY-mouseY);
   rect (65,445, 455, posY-mouseY);
     
 
 
String s = "PRESS 'B' OR 'W' TO INVERT COLOURS";
text(s, 65, 20, 250, 80);  
String s2 = "PRESS 'S' TO SAVE AN IMAGE";
text(s2, 348, 20, 300, 80);}
  

  



  /*//frame
  rect (0,0, 30, 590);
  rect (550,0, 30, 590);
  rect (0,0, 590, 30);
  rect (0,475, 590, 30);*/
  
  //retangulos de cima
   rect (64,61, 35, posY+mouseY);
   rect (134,61, 35, posY+mouseY);
   rect (204,61, 35, posY+mouseY);
   rect (274,61, 35, posY+mouseY);
   rect (344,61, 35, posY+mouseY);
   rect (414,61, 35, posY+mouseY);
   rect (484,61, 35, posY+mouseY);
   
   //retangulos de baixo
   rect (0,305, 20, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (0,340, 20, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,445, 455, posY-mouseY);
     
   
   
   //sequencia com fundo branco
   if (mouseY>40 || mouseY<400){
    
    background(0);
    stroke(255);
    fill(255);
    

    //retangulos de cima
  
   rect (65,61, 35, posY+mouseY);
   rect (135,61, 35, posY+mouseY);
   rect (205,61, 35, posY+mouseY);
   rect (275,61, 35, posY+mouseY);
   rect (345,61, 35, posY+mouseY);
   rect (415,61, 35, posY+mouseY);
   rect (485,61, 35, posY+mouseY);
   
   //retangulos de baixo
 
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455, posY-mouseY);
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455,posY-mouseY);
   rect (65,445, 455, posY-mouseY);
   
 
String s = "PRESS 'B' OR 'W' TO INVERT COLOURS";
text(s, 65, 20, 250, 80);  
String s2 = "PRESS 'S' TO SAVE AN IMAGE";
text(s2, 348, 20, 300, 80);}
   
   
   if(keyPressed==true); 
if (key=='w' || key=='W'){
  
  background(255);
  stroke(0);
  fill(0);



    //retangulos de cima
  
   rect (64,61, 35, posY+mouseY);
   rect (134,61, 35, posY+mouseY);
   rect (204,61, 35, posY+mouseY);
   rect (274,61, 35, posY+mouseY);
   rect (344,61, 35, posY+mouseY);
   rect (414,61, 35, posY+mouseY);
   rect (484,61, 35, posY+mouseY);
   
   //retangulos de baixo
 
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,445, 455, posY-mouseY); 
    
   
   //sequencia com fundo branco
   if (mouseY>40 || mouseY<400){
    
    background(255);
    stroke(0);
    fill(0);
    

    //retangulos de cima
  
   rect (65,61, 35, posY+mouseY);
   rect (135,61, 35, posY+mouseY);
   rect (205,61, 35, posY+mouseY);
   rect (275,61, 35, posY+mouseY);
   rect (345,61, 35, posY+mouseY);
   rect (415,61, 35, posY+mouseY);
   rect (485,61, 35, posY+mouseY);
   
   //retangulos de baixo
 
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455, posY-mouseY);
   rect (65,305, 455, posY-mouseY);
   rect (65,375, 455,posY-mouseY);
   rect (65,445, 455, posY-mouseY);
     
 
 
String s = "PRESS 'B' OR 'W' TO INVERT COLOURS";
text(s, 65, 20, 250, 80);  
String s2 = "PRESS 'S' TO SAVE AN IMAGE";
text(s2, 348, 20, 300, 80);}
   
   if(keyPressed==true); 
if (key=='b' || key=='B'){

    background(0);


   background(0);
    stroke(255);
    fill(255);
    
    
    //retangulos de cima
  
   rect (64,61, 35, posY+mouseY);
   rect (134,61, 35, posY+mouseY);
   rect (204,61, 35, posY+mouseY);
   rect (274,61, 35, posY+mouseY);
   rect (344,61, 35, posY+mouseY);
   rect (414,61, 35, posY+mouseY);
   rect (484,61, 35, posY+mouseY);
   
   //retangulos de baixo
 
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,305, 455, posY-mouseY);
   rect (64,375, 455, posY-mouseY);
   rect (64,445, 455, posY-mouseY);
   
      
String s = "PRESS 'B' OR 'W' TO INVERT COLOURS";
text(s, 65, 20, 250, 80);  
String s2 = "PRESS 'S' TO SAVE AN IMAGE";
text(s2, 348, 20, 300, 80);}}}
  

   
     
   
  
  void keyReleased() {

  if (key == 's' || key == 'S') { 
    saveFrame("save-###.jpg");}
 
}
   

     
 