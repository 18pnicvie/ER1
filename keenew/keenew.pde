int c1 = 255;
float y = 0;
float x = width+350;
float spacing = 15;
float speed = 0;
float grav = 0.1;


void setup() {
  size(1280, 720);
}

void draw() {

  ellipseMode(CENTER);

  //background
  background(255);
  fill(48, 128, 20);
  rectMode(CORNER);
  noStroke();
  
  //sky
  fill(135, 206, 235);
  rect(0, 0, width, height/2);
  
  //land
  fill(48, 128, 20);
  rect(0, height/2, width, height);
  
  //hills
  fill(205,133,63);
  rect(0, 0, width/3, height/2);
  rect(width/2+250, 0, width/3, height/2);
  
  //water
  fill(30,144,255);
  stroke(30,155,255);
  for(int i = 450; i < 860; i = i + 15){
    for(float j = 0; j < height/2; j = j + random(15)){
    ellipse(i,y+j,20,20);
    }
  }

  ////falling of the water
  //y = y + speed;
  //speed= speed + grav;
  //if(y > height){
  //  y = 0;
  //  speed = 0;
  //}
  //println(speed);

  //keenew
  rectMode(CENTER);
  translate(mouseX, mouseY);

  //body
  strokeWeight(3);
  stroke(0);
  fill(0, c1, 0);

  if (mousePressed) {
    fill(random(c1), random(c1), random(c1));
  }
  ellipse(0, 0, 200, 150);

  //head
  stroke(0);
  ellipse(-100, -50, 100, 100);

  //ears
  fill(0);
  line(-150, -110, -140, -80);
  line(-60, -120, -80, -90);
  ellipse(-150, -110, 10, 10);
  ellipse(-60, -120, 10, 10);

  //tail
  line(100, 0, 150, 25);
  ellipse(150, 25, 10, 10);

  //eyes
  noStroke();
  fill(0);
  ellipse(-120, -60, 30, 40);
  ellipse(-80, -60, 30, 40);

  //face things
  ellipse(-100, -40, 20, 20);


  //leg
  stroke(0);
  strokeWeight(5);
  line(-50, 80, -40, 50);
  line(-70, 80, -60, 50);
  line(60, 80, 60, 50);
  line(50, 80, 50, 50);
}