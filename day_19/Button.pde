class Button {
  //button sizes and placements
  float x;
  float y;
  float w;
  float h;

  //is the button on or off
  boolean on;

  //constructor that starts are temp vars
  Button(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    on = false; //starting state of button is = to off
  }
  void pressed(int mx, int my) {
    //is our mouseX inside the button
    if (mx > x && mx < x+w && my > y && my < y + h) {
      on = !on;
    }
  }

  //make the button
  void display() {
    rectMode(CORNER);
    stroke(0);
    
    if (on) {
      fill(175);
    } else {
      fill(0);
    }
    rect(x,y,w,h);
  }
}