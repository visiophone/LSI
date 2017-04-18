
float[] size = new float[180]; 

void setup(){  
 size(800,800); 

}

void draw(){
  
  background(0);
  stroke(255);
  
  translate (width/2,height/2);
  
rotate(radians(-90));
   for(int i=0;i<180;i++){
   
     if (i==0){size[0]=random(20,600);}
     else{
       size[i]+=(size[i-1]-size[i])*0.4;
     }
     
   pushMatrix();
   rotate(radians(i*2));
   line(0,0,size[i],0);
   popMatrix();
  }

 
  }