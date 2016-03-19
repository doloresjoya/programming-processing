float beginX = 20.0;
float beginY = 10.0;
float endX = 70.0;
float endY = 80.0;
float distX;
float distY;
float x = 0.0;
float y = 0.0;
float step = 0.02;
float pct = 0.0;

void setup(){
  size(500, 500);
  noStroke();
  smooth();
  distX = endX - beginX;
  distY = endY - beginY;
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  pct += step;
  if (pct < 1.0){
    x = beginX + (pct * distX);
    y = beginY + (pct * distY);
  }
  fill(255);
  ellipse(x, y, 20, 20);
}