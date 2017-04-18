int[] size = new int[100]; 

void setup(){ 
  size(800,800);
  
}

void draw(){

background(0);

for(int i=0;i<size.length;i++){ 

float wide=width/size.length; 

if(i==0) size[i]=mouseY;
else size[i]+=(size[i-1]-size[i])*0.3;

rect(i*wide,0,wide,size[i]); 

}
  
}