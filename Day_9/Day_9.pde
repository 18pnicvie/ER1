size(640,360); //makes the window a size of 640x360

background(255); //makes background white

int y = 80; //vertical loc. of each line made

int spacing = 10; //distance of the space

int len = 20; //the lenght of the lines used

for(int x = 50; x <= 150; x += spacing){ //repeating the lines till it reaches 150
  
  line(x,y,x,y + len); //the line set up
}