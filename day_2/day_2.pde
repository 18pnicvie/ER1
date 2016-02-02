void setup(){ //runs once at start up
  size(200,200); //window size
}
void draw(){ //runs over and over
  background(100); //fresh sheet
  stroke(255); //shape outline color
  fill(0); //shape fill color
  rectMode(CENTER); //draw rect from center
  rect(width/2,height/2,mouseX,mouseY); //rect(x1,y1,x2,y2)
  stroke(255,0,0); //line color
  line(0,0,mouseX,mouseY); //line(x1,y1,x2,y2) start of the end
 //println("You pressed " + key + " " + keyCode);
 
}

void mousePressed(){ //if mouse pressed do this
 println(mouseX + "," + mouseY);
 
}