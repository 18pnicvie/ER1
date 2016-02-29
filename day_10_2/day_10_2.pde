int x = 0;

int y = 0;

int speed = 5;

int state = 0;

void setup(){
  
size(640,360);

}

void draw(){
 
  //makes a new white background
 background(255);
 
 //display square
 stroke(0);
 fill(random(255),random(255),random(255));
 rect(x,y,19,19);
 
 if(state == 0){ //if state = 0 do this
   
  x = x + speed; //x = x + speed
  
  if( x > width - 20){ //if x > width - 20 do this
   
   x = width - 20;
   
   state = 1; //make state = 1
   
  } 
 }
   else if ( state == 1){ //if state = 1 then do this
   
   y = y + speed;
   
   if(y > height-20){
    
    y = height-20;
    
    state = 2;

   } 
   
  }
  else if(state == 2){
   
   x = x - speed;
   if(x < 0){
    
     x = 0;
     
     state = 3;
     
   }
   
  }
  else if(state == 3){
    
   y = y - speed;
   if(y < 0){
    
    y = 0;
    
    state = 0;
    
   }
  }
 
 }