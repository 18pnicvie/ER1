int num = 30;
int[] x = new int[num];
int[] y = new int[num];

void setup(){
  size(500,500);
  noStroke();
  fill(255, 102);
}

void draw(){
  background(0);
  
  for (int i = num-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
  } //read from btm to top of list
  
  x[0] = mouseX;
  y[0] = mouseY; //add value @ top of list
  
  for(int i = 0; i < num; i++){
    ellipse(x[i],y[i],i,i); 
  }
}