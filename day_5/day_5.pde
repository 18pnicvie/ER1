int bRect1 = 20;
int stroke = 255;
int quad1 = 300;
int quad2 = 100;
int quad3 = 500;
int ellip1 = 80;
int ellip2 = 150;

//drawing order
void setup(){ //does this once
  size(600,650); //makes the size to 600 by 650
}

void draw(){ //costantly repeats
  background(255); //makes background white
  
  //black rectangle
  fill(0); //fill set to black
  rectMode(CORNER);
  noStroke(); //makes no outline
  rect(bRect1,bRect1,bRect1 * 28,bRect1 * 16.5); //the rectangel itself
  
  //quad
  stroke(stroke,0,0); //makes the outline red
  noFill(); //makes it have no fill
  strokeWeight(1); //makes the stroke to a weight of 1
  quad(quad1,quad2 * 1.5,quad2,quad1 * 1.16,quad1,quad3 * 1.1,quad3,quad1 * 1.16); // the square itself
  
  //top circle
  fill(255); //white
  noStroke(); //makes it have no stroke
  ellipse(ellip2 * 2,ellip2,ellip1,ellip1); //the circle
  
  //left circle
  fill(0,255,0,150); //fill set to green
  noStroke(); //makes no outline
  ellipse(ellip2-50,ellip2*2+50,ellip1,ellip1); //the circle itself
  
  //right circle
  noFill(); //makes it have no fill
  strokeWeight(10); //makes the stroke larger
  stroke(0,0,stroke); //makes the outline blue
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