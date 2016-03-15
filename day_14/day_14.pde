Car myCar; //making the obj Car //at top so global var

void setup() {
  size(640, 360);
  myCar = new Car();
}

void draw() {
  background(255);
  myCar.display();
  myCar.move();
}

class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car() { //constrcutor, setting var
    c= color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }
  void display(){ //fuction
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos,ypos,20,10);
 }
 void move(){ //fuction
   xpos = xpos + xspeed;
   if( xpos > width){
     xpos = 0;
   } 
 }
}