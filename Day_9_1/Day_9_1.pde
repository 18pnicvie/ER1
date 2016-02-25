size(200,200); //makes the window

background(255); //makes the back white

int y = 80; //the y value

int x = 50; //the x value

int spacing = 10; //the space between the lines

int len = 20; //the lenght of the line

int xStop = 150; //where x will stop

stroke(0); //sets the lines to black

while (x <= xStop){ //do this if x <= xStop
  
 line(x,y,x,y + len); //the line itself
 
  x = x + spacing; //the spacing between the lines
  
}