Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver= false;

int score = 0;
int level = 1;
int lives = 5;
int levelCounter = 0;
PFont f;

void setup() {
  size(640, 360);

  catcher = new Catcher(32);
  drops = new Drop[50];
  timer = new Timer(300);
  timer.start();
  noCursor();
  f = createFont("Impact", 12, true);
}


void draw() {
  background(0);

  if (gameOver) {
    textFont(f,48);
    fill(0);
    textAlign(CENTER);
    fill(255,0,0);
    text("RIP, Game Over!",width/2,height/2);
  } else {


    catcher.setLocation(mouseX, mouseY);
    catcher.display();

    //check the Timer
    if (timer.isFinished()) {
      //increment drop below..
      //totalDrops++;
      if (totalDrops < drops.length) {
        drops[totalDrops] = new Drop();
        totalDrops++;
      }
      timer.start();
    }

    for (int i = 0; i < totalDrops; i++) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();

        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished();
          lives--;
          if (lives <= 0) {
            gameOver = true;
          }
        }

        //if statment for intersection
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter >= drops.length) {
      level++;
      levelCounter= 0;
      lives= lives + 1;
      totalDrops = 0;
      timer.setTime(constrain(300-level*25, 0, 300));
    }
    textFont(f,14);
    fill(255);
    text("Lives:"+ lives,10,20);
    rect(10,24,lives*10,10);
    text("level:" + level, 300,20);
    text("Score:" + score, 300,40);
  }
}