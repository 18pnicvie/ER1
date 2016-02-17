void setup(){ //runs once
 size(1280,720); //makes the box size

}

void draw(){ //repeats over and over
  
  background(255); //makes the background white
  ellipseMode(CENTER); //makes it all start from the center
  rectMode(CENTER); //makes it all start from the center
 
  translate(mouseX,mouseY);
 
  //body
  stroke(0); //makes the stroke black
  fill(140,0,80); //makes the fill pink/purple
  rect(0,0,20,100); //makes the body
 
  //head
  fill(255); //makes the fill white
  ellipse(0,-30,60,60); //makes the head
 
  //eyes
  fill(0); //makes the inside black
  ellipse(-19,-30,16,32); //makes the right eye
  ellipse(19,-30,16,32); //makes the left eye
 
  //legs
  stroke(0); //makes the stroke black
  line(-10,50,-20,60); //makes the right leg
  line(10,50,20,60); //makes the left leg
  
}