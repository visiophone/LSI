String [] nomes = {"CARLOS", "SOFIA","ANA","CATARINA","JOÃO","MARIA","FERNANDO"};
int [] idades = {21,25,22,18,20,28,30};
float [] alturas = {1.70, 1.65,1.62,1.72,1.80,1.55,1.90};

int id=6;

void setup(){  
  size(800,800);

}


void draw(){
background(0);

textSize(30);
text("ID: "+id, 50,270);

textSize(120);
text(nomes[id], 50,400);

textSize(200);
text(idades[id], 50,600);

textSize(100);
text(nf(alturas[id],1,2), 400,600);

}


void mouseReleased(){
 
  id=int(random(7));
  
}