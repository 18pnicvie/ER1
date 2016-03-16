Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;

float gravity = 0.1;

void setup() {
  size(200, 200);
  ball1 = new Ball(50, 0, 16);
  ball2 = new Ball(30, -200, 12);
  ball3 = new Ball(100, -90, 15);
  ball4 = new Ball(80, -20, 10);
}

void draw() {
  background(255);
  
  //ball1
  ball1.display();
  ball1.update();
  
  //ball2
  ball2.display();
  ball2.update();
  
  //ball3
  ball3.display();
  ball3.update();
  
  //ball4
  ball4.display();
  ball4.update();
}