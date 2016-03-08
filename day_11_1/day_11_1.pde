//gravity

//var
float x = 320;
float y = 0;
float speed = 0;
float grav = 0.1;

void setup(){
  
  size(640,360);
  
}

void draw(){
  
  //white background
  background(255);
  
  //the ellipse
  fill(random(255),random(255),random(255));
  stroke(0);
  rectMode(CENTER);
  ellipse(x,y-10,20,20);
  
  //the movement
  
  //the falling
  y = y + speed;
  speed = speed + grav;

  //reverse speed when hitting the bottom
  //if y is > height do this
  if(y > height){
   
   //speed is reversed
   speed = speed * -0.65;
   
   //y = height of box
   y = height;
   
  }
}