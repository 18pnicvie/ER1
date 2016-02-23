void setup(){ //runs once
  
 size(200,200); //setting up the window
 
 
}

void draw(){ //run over and over
  
  //background and setting stroke
  background(255);
  stroke(0);
  
  //vertical line
  line(100,0,100,200);
  
  //horizontal line
  line(0,100,200,100);
  
  //setting up for the conditional
  noStroke();
  fill(0);
  
  //conditional statements
  
  //top right rectangle
  if (mouseX < 100 && mouseY < 100) { //If _____ then ______
    rect(0,0,100,100);
  } 
  
  //top left rectangle
  else if (mouseX > 100 && mouseY < 100) { //If _____ is not met then _______
    rect(100,0,100,100);
  }
  
  //bottom left rectangle
  else if (mouseX < 100  && mouseY > 100) { //If _____ is not met then _______
    rect(0,100,100,100);
  }
 
  //bottom right rectangle
  else if (mouseX > 100 && mouseY > 100) { //If _______ is not met then ______
    rect(100,100,100,100);
  }
  
  
  
  
}