//guardar img em PDF
import processing.pdf.*;

//para o rectangulo_interativo_multiplyvermelho
float posA=50;
float posB=300;
float velA=random(-5,5);
float velB=random(-5,5);
float SizeA = random(10,400);

//para o rectangulo_interativo_multiplyazul
float posC=450;
float posD=50;
float velC=random(-5,5);
float velD=random(-5,5);
float SizeC = random(10,400);

//para o rectangulo_interativo_multiplyverde
float posE=450;
float posF=50;
float velE=random(-5,5);
float velF=random(-5,5);
float SizeE = random(10,400);

void setup (){
size(600,600);
beginRecord(PDF, "exercicio.pdf");
}
int value = 0;

void draw() {
background (0);
noStroke();

  //rectangulos_verticais
noStroke(); fill(mouseX/8,mouseY/8,50); rect(50,50,495,465);
noStroke(); fill(mouseX/7,mouseY/7,100); rect(90,100,50,200);
noStroke(); fill(mouseX/6,mouseY/6,120); rect(180,100,50,200);
noStroke(); fill(mouseX/5,mouseY/5,150); rect(270,100,50,200);
noStroke(); fill(mouseX/4,mouseY/4,200); rect(360,100,50,200);
noStroke(); fill(mouseX/2,mouseY/2,300); rect(450,100,50,200);

//rectangulos_horizontais
noStroke(); fill(#E99476); rect(90,335,410,50);
noStroke(); fill(#E99476); rect(90,425,410,50);

//rectangulo_interativo_multiplyazul
noStroke(); fill(0,0,255,70); rect(posC,posD,495,465); 
if(posC<(SizeC/2) || posC > (width-SizeC/2) ) {velC=-velC;}
if(posD<(SizeC/2) || posD < (height-SizeC/2) ) {velD=-velD;}
posC=posC+velC;
posD=posD-velD;

//rectangulo_interativo_multiplyvermelho
noStroke(); fill(255,0,0,70); rect(posA,posB,495,465); 
if(posA<(SizeA/2) || posA < (width-SizeA/2) ) {velA=-velA;}
if(posB<(SizeA/2) || posB > (height-SizeA/2) ) {velB=-velB;}
posA=posA-velA;
posB=posB+velB;

//rectangulo_interativo_multiplyverde
noStroke(); fill(0,255,0,70); rect(posE,posF,495,465); 
if(posE<(SizeE/2) || posE > (width-SizeE/2) ) {velE=-velE;}
if(posF>(SizeE/2) || posF < (height-SizeE/2) ) {velF=-velF;}
posE=posE-velE;
posF=posF-velF;

endRecord();

}

//rectangulo_interativo_multiplyvermelho_voltar ao inicio
void mouseReleased(){    
posA=50;
posB=495;

}

//guardar img em PNG
void keyPressed() {
if(key=='h'){
saveFrame("img.png");
}
}