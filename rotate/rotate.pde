void setup(){
  size(600,600);
  pixelDensity(2);
  
  //GRID
  for(int x = 0; x < width; x+=10){
    for(int y = 0; y < height; y+=10){
      stroke(100, 10);
      line(x,y,width,y);
      line(x,y,x,height);   
    }
  }
 
  smooth();
}

float y = 0.0;
float x = 0.0;
float s = 1.8;

void draw(){
  frameRate(30);
  background(y * 2.5);
  y = y + 0.5;
  x = x + 0.5;
  println(frameCount);
  println(frameRate);
  
  ellipse(x,y,30,30);
  if (y > 255){
    y = y - 0.5;
  }
  scale(s);
  strokeWeight(1.0/s);
  ellipse(x,y,30,30); 
  
  rotate(PI/12);
  
  rect(x, y, 200, 200);
  
}