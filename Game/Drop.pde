class Drop {

  float x, y; //X an Y points
  float speed; //speed of drop
  color c; //color
  float r; //radius

  Drop() {
    r = 8;
    y = -r*4;
    x = random(width);
    speed = random(1, 8);
    c = color(20, 150, 78);
  }
  void move() {
    y += speed;
  }
  void display() {
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++) {
      ellipse(x, y + i * 4, i*2, i*2);
    }
  }
  boolean reachedBottom() {
    if (y > height+ r * 4) {
      return true;
    } else {
      return false;
    }
  }
}