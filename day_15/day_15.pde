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