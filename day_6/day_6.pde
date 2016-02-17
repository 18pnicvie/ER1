float r; //setting up the red float
float g; //setting up the green float
float b; //setting up the 
float a; //setting up the grey float

float diam; //setting up the diam float
float x; //setting up the ellipse x float
float y; //setting up the ellipse y float




void setup(){ //runs it once
 size(1280,720); //makes the box
 background(255); //sets background to white
 
}

void draw(){ //runs many times
  r = random(255); //seting a random red
  g = random(255); //setting a random green
  b = random(255); //setting a random blue
  a = random(255); //setting a random white to black color
  
  diam = random(500); //sets a random diam
  x = random(width); //sets a random width
  y = random(height); //sets a random height
  
  background(255); //makes the background white again
  
  noStroke(); //makes no outline
  fill(r,g,b,a); //fills with random colors
  ellipse(x,y,diam,diam); //makes the ellipse
  
  delay(500); //sets a delay
  
}