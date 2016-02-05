int stroke = 1;
int col = 1;

void setup(){
  size(1500,900); //size of window
  background(255); //background color "white"
}

void draw(){
  stroke(col); //line color
  strokeWeight(stroke);
  if (mousePressed){ //on click do this...
 line(pmouseX,pmouseY,mouseX,mouseY);
 //draws a line, last position to current pos.
  }
}
void keyPressed(){
 if(keyCode == UP){ //when up pressed
   stroke++; //incerment stroke
 }
 if(keyCode == DOWN){
   stroke --;
 }
 if(keyCode == LEFT){
   col ++;
 }
 if(keyCode == RIGHT){
   col --;
 }
}