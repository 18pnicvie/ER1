void setup(){
  
  size(255,255);
  
}

void draw(){
  
  background(0);
  
  int i = 0; //starts "i" at 0
  
  while( i < width){
   
   noStroke();
   
   float distance = abs(mouseX - i); //distance is = to dif of mouseX and i
   
   fill(distance);
    
    rect(i,0,10,height);
    
    i += 10;
  }
  
}