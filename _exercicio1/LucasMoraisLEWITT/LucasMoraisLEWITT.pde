float x =90; //ponta do ret
float y=90; //final do ret
float dx =4;

//
float x2 =90; 
float y2=90; 
float dx2 =4;
float x3 =90; 
float y3=90; 
float dx3 =3;

/////
int gray = 40;

// vertical 4

float y4=90; //final do ret
float dy4 =2;
// 5
float y5=90; //final do ret
float dy5 =3;
//6
float y6=90; //final do ret
float dy6 =1;
//7
float y7=90; //final do ret
float dy7 =3;
//8
float y8=90; //final do ret
float dy8 =2;
//9
float y9=90; //final do ret
float dy9 =1;
//10
float y10=90; //final do ret
float dy10 =2;
void setup() {

  size(800, 800);
}

void draw() {
background(gray);
noFill();
stroke(255);

rect(10,10,780,730); // quadrado central
 

// R.H 1

strokeCap(PROJECT);
rect(x,650,600,2); //RETANGULO 1
if (x+660 > width){
 dx = -2;
}
if (x< 60){
   dx= 6;
}
if(mousePressed){
  x=x+dx;

 

}

//R.H 2
strokeCap(SQUARE);
rect(x2,550,600,2); //RETANGULO 1
 
if (x2+660 > width){
 dx2 = -5;
}
 if (x2< 60){
   dx2= 3;
}
if(mousePressed){
  x2=x2+dx2;
}
//R.H 3
strokeCap(SQUARE);
rect(x3,450,600,2); 
 
if (x3+660 > width){
 dx3 = -1;
}
 if (x3< 60){
   dx3= 4;
}
if(mousePressed){
   x3=x3+dx3;
}

//R.V 4
strokeCap(SQUARE);
rect(115,y4,1,260); //RETANGULO 1
strokeWeight (50);

if (y4+660 > height){
 dy4 = -1;
}
 if (y4< 60){
   dy4= 1;
}
if(mousePressed){
  y4=y4+dy4;
}
//R.V 5
strokeCap(SQUARE);
rect(215,y5,1,260); //RETANGULO 1
strokeWeight (50);

if (y5+660 > height){
 dy5 = -2;
}
 if (y5< 60){
   dy5= 1;
}
if(mousePressed){
 y5=y5+dy5; 
}
//R.V 6
strokeCap(SQUARE);
rect(315,y6,1,260); //pos.90.larg.tam.
strokeWeight (50);

if (y6+660 > height){
 dy6 = -2;
}
 if (y6< 60){
   dy6= 1;
}
if(mousePressed){
 y6=y6+dy6; 
}

//R.V 7
strokeCap(SQUARE);
rect(415,y7,1,260); //RETANGULO 1
strokeWeight (50);

if (y7+660 > height){
  dy7= -1;
}
if (y6< 60){
  dy7= 2;
}
if(mousePressed){
  y7=y7+dy7;
}
//R.V 8
strokeCap(SQUARE);
rect(515,y8,1,260); //RETANGULO 1
strokeWeight (50);
if(y8+660 > height) {
  dy8 = -2;
}
if (y8 < 60) {
  dy8 = 2;
}
if(mousePressed){
  y8=y8+dy8;
}
//R.V 9
strokeCap(SQUARE);
rect(600,y9,1,260); //RETANGULO 1
strokeWeight (50);

if (y9 +660 > height){
  dy9 = - 1;
}
if (y9 < 60) {
  dy9 = 3;
}
if(mousePressed){
  y9=y9+dy9;
}
//R.V 10
strokeCap(SQUARE);
rect(690,y10,1,260); //RETANGULO 1
strokeWeight (50);

if (y10 +660 > height){
  dy10 = - 2;
}
if (y10 < 60) {
  dy10 = 4;
}
if(mousePressed){
  y10=y10+dy10;
gray = 30;
}
}

void mouseDragged(){
  
 gray *= -1.000000;

}
void keyReleased(){  
// If Key pressed is P or p, print a frame
if (key == 's' || key == 'S'){
saveFrame("save-###.jpg");
}
}