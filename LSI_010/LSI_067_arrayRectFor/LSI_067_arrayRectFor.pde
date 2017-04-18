int[] size = {100,250,300,600,450,700,500,180};

void setup(){
 
  size(800,800);
}

void draw(){

background(0);
 
 for(int i=0;i<size.length;i++){
 rect(i*100,0,100,size[i]);      
 } 
}