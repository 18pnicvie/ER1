int x = 0; //makes the x var

int ten = 10; //makes the y var

size(200,200); //makes the window 200,200

//while x is < the Width do this
while (x < width){
 int y = 0;
 
  //while y is < the height do this
 while(y < height){
 
  noStroke(); //makes the no stoke for the rectangles
   
  fill(random(255),random(255),random(255)); //makes the fill a random color for the rectangle
   
  rect(x,y,ten,ten); //makes the rectangle at all the points on the window
  
  y += ten; //add ten to y
 }
  
  x += ten; //add ten to x
  
}