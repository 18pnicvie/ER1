int ten = 20;
void setup(){
size(1280,720); //sets size of window
}
void draw(){
//do this when its between the width of the window
for(int x = 0; x < width; x += ten){
 
 //do this when its between the hight of the window
 for(int y = 0; y < height; y += ten){
   
   noStroke(); //makes the no stoke for the rectangles
   
   fill(random(255),random(255),random(255)); //makes the fill a random color for the rectangle
   
   rect(x,y,ten,ten); //makes the rectangle at all the points on the window
     
 }
 
  
}
delay(500); //makes a delay
}