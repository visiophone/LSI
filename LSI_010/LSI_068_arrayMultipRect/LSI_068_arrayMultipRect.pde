int[] size = new int[200]; 

void setup(){ 
  size(800,800);
  
  
  
}

void draw(){

background(0);

for(int i=0;i<size.length;i++){ 

// var to spread the rectLines along X. 800/400. a new var each 2 pixels. 
float wide=width/size.length; 
rect(i*wide,0,wide,size[i]); 

}
  
}


void mouseReleased(){
  
for(int i=0;i<size.length;i++){ 
size[i]=int(random(800));  // generate new sizes, when CLICK

}
 
  
}