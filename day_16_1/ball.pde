class Ball {
  float x;
  float y;
  float speed;
  float w; //size

  //ball constructor
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }
  void display() {
    fill(random(255), random(255), random(255));
    stroke(0);
    ellipse(x, y, w, w);
  }
  void update() {
    y = y + speed;
    speed = speed + gravity;

    if (y+8> height) {
      speed = speed * -0.95;
    }
  }
}