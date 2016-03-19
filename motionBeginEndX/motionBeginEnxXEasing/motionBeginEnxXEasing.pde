float x = 20.0;
float y = 10.0;
float targetX = 70.0;
float targetY = 80.0;
float easing = 0.05;

void setup(){
  size(500, 500);
  noStroke();
  smooth();
}

void draw(){
  fill(0, 12);
  rect(0, 0, width, height);
  float d = dist(x, y, targetX, targetY);
  if (d > 1.0){
    x += (targetX - x) * easing;
    y += (targetY - y) * easing;
  }
  fill(255);
  ellipse(x, y, 20, 20);
}