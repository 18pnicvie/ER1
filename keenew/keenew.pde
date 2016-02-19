void setup(){
 size(1280,720);
 
}

void draw(){
  
 background(255);
 rectMode(CENTER);
 ellipseMode(CENTER);
 
 //translate(mouseX,mouseY);
 
 //body
 strokeWeight(3);
 stroke(0);
 fill(0,255,0);
 ellipse(200,150,200,150);
 
 //head
 stroke(0);
 fill(0,255,0);
 ellipse(100,100,100,100);
 
 //ears
 fill(0);
 line(50,40,60,70);
 line(140,30,120,60);
 ellipse(50,40,10,10);
 ellipse(140,30,10,10);
 
 //tail
 line(300,150,350,175);
 ellipse(350,175,10,10);
 
 //eyes
 noStroke();
 fill(0);
 ellipse(80,90,30,40);
 ellipse(120,90,30,40);
 
 //face things
 ellipse(100,110,20,20);
 
 
 //leg
 stroke(0);
 strokeWeight(5);
 line(150,230,160,200);
 line(130,230,140,200);
 line(260,230,260,200);
 line(250,230,250,200);
 
 
 
}