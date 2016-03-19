float x = 50.0; // x-coord
float y = 50.0; // y-coord
float radius = 15; // radius
float speedX = 1.0; // speed of motion on the x-axis
float speedY = 0.4; // speed of motion on the y-axis
int directionX = 1; // dir of motion on the x-axis
int directionY = -1; // dir of motion on the y-axis

void setup (){
  size(500, 500);
  smooth();
  noStroke();
  ellipseMode(RADIUS);
}

void draw(){
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  ellipse(x, y, radius, radius);
  x += speedX * directionX;
  if((x > width - radius) || (x < radius)){
    directionX = -directionX;
  }
  y += speedY * directionY;
  if((y > height - radius) || (y < radius)){
    directionY = -directionY;
  }
}