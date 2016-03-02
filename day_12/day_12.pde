//Spinning Matrix

//vars
boolean spin = false;
float angle = .1;
int x = 50;
int y = 50;

void setup() {

  size(400, 400);
}

void draw() {

  background(55);

  //The colors of the shapes
  fill(random(255), random(255), random(255));
  noStroke();

  //if boolean is false make these shapes
  if (spin == false) {
    rect(x, y, 30, 30);
    ellipse(width/2, height/2, x, y);
  }

  if (mousePressed) {
    if (mouseX > x && mouseX < 80 && mouseY > y && mouseY < 80) {

      //the push and pop matrix
      pushMatrix(); //keep transforms within the matrix
      translate(65, 65);
      rotate(angle);
      rect(0, 0, 30, 30);
      popMatrix(); //ends the isolation of the matrix

      angle += .05;
      ellipse(width/2, height/2, x, y);
      spin = true;
      delay(20);
    }
  } else spin = false;
}