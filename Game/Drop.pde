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
    c = color(random(255), random(255), random(255));
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
  //Function for when drop is caught
  void caught(){
    //drop stops
    speed = 0;
    //move drops
    y = -1000;
  }
}