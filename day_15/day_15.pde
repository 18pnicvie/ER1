car myCar1;
car myCar2; //the two cars

void setup() {
  size(640, 360);

  myCar1 = new car(color(255), 0, 175, 1);

  myCar2 = new car(color(55), 0, 100, 2);
}

void draw() {
  background(255);

  myCar1.move();
  myCar1.display();

  myCar2.display();
  myCar2.move();
}

class car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    //making car constructor with var for input
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {

    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 30, 15);
  }
  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}