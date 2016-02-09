//drawing order
void setup(){
  size(600,650);
}

void draw(){
  background(255); //makes background white
  
  //black rectangle
  fill(0); //fill set to black
  rectMode(CORNER);
  noStroke(); //makes no outline
  rect(20,20,560,330); //the rectangel itself
  
  //quad
  stroke(255,0,0); //makes the outline red
  noFill(); //makes it have no fill
  strokeWeight(1); //makes the stroke to a weight of 1
  quad(300,150,100,350,300,550,500,350); // the square itself
  
  //top circle
  fill(255); //white
  noStroke(); //makes it have no stroke
  ellipse(300,150,80,80); //the circle
  
  //left circle
  fill(0,255,0,150); //fill set to green
  noStroke(); //makes no outline
  ellipse(100,350,80,80); //the circle itself
  
  //right circle
  noFill(); //makes it have no fill
  strokeWeight(10); //makes the stroke larger
  stroke(0,0,255); //makes the outline blue
  ellipse(500,350,80,80); // the circle itself
  strokeWeight(1); //set the weight back to 1
  
  //triangle
  fill(245,200); //sets the triangle to grey
  triangle(300,440,140,600,460,600); //the triangle itself
  
  //rectangle on the bottom of the triangle
  fill(255); //sets fill to white
  stroke(0,0,255); // makes the outline blue
  rectMode(CENTER); 
  rect(300,600,10,10); //the rectangle itself
 
 //line bettween two points
 stroke(238,23,250); //makes the stroke a pink/purple
 strokeWeight(3); // makes it a weight of 3
 line(300,150,300,600); // the line points
 
 //arc
 stroke(0); //the stroke set to black
 noFill(); //makes it have no fill
 strokeWeight(1); // makes the weight back to 1
 arc(500,550,400,400,PI,PI + HALF_PI); // the arc itself
 
 //point
 stroke(255,0,0); //the stroke of the points set to red
 strokeWeight(3); //the strokeweight set to 3
 point(500,550); //the points placement
}