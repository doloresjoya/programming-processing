void setup(){
  size(600,600);
  noStroke();
  
  //GRID
  for(int x = 0; x < width; x+=10){
    for(int y = 0; y < height; y+=10){
      stroke(100, 10);
      line(x,y,width,y);
      line(x,y,x,height);   
    }
  }
 
  smooth();
  noLoop();
  frameRate(30);
}

float y = 0.0;
float x = 0.0;
float s = 1.8;

void draw(){
    for(int x = 0; x < width; x+=30){
    for(int y = 0; y < height; y+=30){
      eye(x, y);   
    }
  }
}

void eye(int x, int y){
  fill(255);
  ellipse(x, y, 60, 60);
  fill(0);
  ellipse(x+10, y, 30, 30);
  fill(255); 
  ellipse(x+16, y-5, 6, 6);
}