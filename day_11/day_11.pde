void setup(){
  
 size(200,200);

 noStroke();
 
}

void draw(){
  
  //the background
 background(175);
 
 //the ellipse
 float c1 = map(mouseX,0,width,0,255);
 fill(c1);
 println(mouseX,c1);
 ellipse(100,100,50,50);
 
 //sets the var //map Xpos, 0 to the width, 50 to 150
 float x1 = map(mouseX,0,width,50,150);
 float y1 = map(mouseX,0,width,100,200);
 ellipse(mouseX,mouseY,25,25);
 
}