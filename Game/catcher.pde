class Catcher {

  float r; //radius
  float x, y; //location
  float col; //color

  Catcher(float tempR) {
    r = tempR;
    col= color(80, 40, 18);
    x = 0;
    y = 0;
  }
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  void display() {
    stroke(0);
    fill(102,178,255);
    ellipse(x, y, r*2, r*2);
    fill(255);
    ellipse(x-15,y-10,20,20);
    ellipse(x+15,y-10,20,20);
    fill(0);
    ellipse(x-15,y-10,10,10);
    ellipse(x+15,y-10,10,10);
    
    
  }
  //function for drop/catcher intersecton
  //true of false are the intersecting?
  boolean intersect(Drop d) {
    //calculate the distance between catcher and drop
    float distance = dist(x, y, d.x, d.y);
    //compare distance
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}