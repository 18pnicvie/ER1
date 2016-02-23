//ture or false var
boolean button = false;

//var being set
int x = 50;

int y = 50;

int w = 100;

int h =75;

void setup(){ //runs once
  
 size(200,200); //set the window size
  
}

void draw(){ //runs over and over
  
  //setting up condictional
  if (button){
    background(255,255,200); //makes the light color
    stroke(0); //makes a blackout line
  }
  //if false then _____
  else {
    background(0); //makes the background black
    stroke(255); //makes a white stroke
  }
  
  //the button
  fill(175); //fill of gray
  rect(x,y,w,h); //var pre-set here
  
}

void mousePressed(){ //when ever the mouse is pressed do this

  //if mouse is in the buttom the do ________
  if(mouseX > X && mouseX < x+w && mouseY > y && mouseY < y+h){
    
   button = !button; //invert buttom when mouse is pressed
   
  }
  
}