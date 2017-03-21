int rectColor=200;
int originalColor=0;

int vertRectHeight=250;
int vertRectWidth=47;
int horiRectHeight=47;
int horiRectWidth=611;

int rect01X=94;
int rect01Y=94;
int rectColor01=originalColor;

int rect02X=188;
int rect02Y=94;
int rectColor02=originalColor;

int rect03X=282;
int rect03Y=94;
int rectColor03=originalColor;

int rect04X=376;
int rect04Y=94;
int rectColor04=originalColor;

int rect05X=470;
int rect05Y=94;
int rectColor05=originalColor;

int rect06X=564;
int rect06Y=94;
int rectColor06=originalColor;

int rect07X=658;
int rect07Y=94;
int rectColor07=originalColor;

int rect08X=94;
int rect08Y=391;
int rectColor08=originalColor;

int rect09X=94;
int rect09Y=485;
int rectColor09=originalColor;

int rect10X=94;
int rect10Y=579;
int rectColor10=originalColor;


void setup(){
  size(800,720);
  background(0);
}

void draw(){
  fill(rectColor);
  noStroke();
  rect(0,0,800,47);
  rect(0,0, 47,800);
  rect(753,0, 47, 800);
  rect(0,673, 800, 47);
  fill(rectColor01);
  rect(rect01X,rect01Y,vertRectWidth,vertRectHeight);
  fill(rectColor02);
  rect(rect02X,rect02Y,vertRectWidth,vertRectHeight);
  fill(rectColor03);
  rect(rect03X,rect03Y,vertRectWidth,vertRectHeight);
  fill(rectColor04);
  rect(rect04X,rect04Y,vertRectWidth,vertRectHeight);
  fill(rectColor05);
  rect(rect05X,rect05Y,vertRectWidth,vertRectHeight);
  fill(rectColor06);
  rect(rect06X,rect06Y,vertRectWidth,vertRectHeight);
  fill(rectColor07);
  rect(rect07X,rect07Y,vertRectWidth,vertRectHeight);
  fill(rectColor08);
  rect(rect08X,rect08Y,horiRectWidth,horiRectHeight);
  fill(rectColor09);
  rect(rect09X,rect09Y,horiRectWidth,horiRectHeight);
  fill(rectColor10);
  rect(rect10X,rect10Y,horiRectWidth,horiRectHeight);
  
  if (mouseX>rect01X && mouseX<(rect01X+vertRectWidth) && mouseY>rect01Y && mouseY<(rect01Y+vertRectHeight)){
    rectColor01=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor01=originalColor;
  }
  if (mouseX>rect02X && mouseX<(rect02X+vertRectWidth) && mouseY>rect02Y && mouseY<(rect02Y+vertRectHeight)){
    rectColor02=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor02=originalColor;
  }
  if (mouseX>rect03X && mouseX<(rect03X+vertRectWidth) && mouseY>rect03Y && mouseY<(rect03Y+vertRectHeight)){
    rectColor03=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor03=originalColor;
  }
  if (mouseX>rect04X && mouseX<(rect04X+vertRectWidth) && mouseY>rect04Y && mouseY<(rect04Y+vertRectHeight)){
    rectColor04=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor04=originalColor;
  }
  if (mouseX>rect05X && mouseX<(rect05X+vertRectWidth) && mouseY>rect05Y && mouseY<(rect05Y+vertRectHeight)){
    rectColor05=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor05=originalColor;
  }
  if (mouseX>rect06X && mouseX<(rect06X+vertRectWidth) && mouseY>rect06Y && mouseY<(rect06Y+vertRectHeight)){
    rectColor06=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor06=originalColor;
  }
  if (mouseX>rect07X && mouseX<(rect07X+vertRectWidth) && mouseY>rect07Y && mouseY<(rect07Y+vertRectHeight)){
    rectColor07=int(random(#000000, #FFFFFF));
  }
  else{
    rectColor07=originalColor;
  }
}


void mousePressed(){
  if (mouseX>rect08X && mouseX<(rect08X+horiRectWidth) && mouseY>rect08Y && mouseY<(rect08Y+horiRectHeight)){
    rectColor08=int(random(#000000, #FFFFFF));
  }
  else if (mouseX>rect09X && mouseX<(rect09X+horiRectWidth) && mouseY>rect09Y && mouseY<(rect09Y+horiRectHeight)){
    rectColor09=int(random(#000000, #FFFFFF));
  }
  else if (mouseX>rect10X && mouseX<(rect10X+horiRectWidth) && mouseY>rect10Y && mouseY<(rect10Y+horiRectHeight)){
    rectColor10=int(random(#000000, #FFFFFF));
  }
}

void keyPressed(){
  if (key== ' '){
    originalColor=200;
    rectColor08=200;
    rectColor09=200;
    rectColor10=200;
  }
}
void keyReleased(){
  if (key== ' '){
    originalColor=0;

    rectColor08=originalColor;
    rectColor09=originalColor;
    rectColor10=originalColor;
  }
}