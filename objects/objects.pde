float x = 33.0;
float y = 50.0;
float diameter = 30.0;

void setup(){
  size(400, 400);
  noStroke();
}

void draw(){
  background(0);
  ellipse(x, y, diameter, diameter);
}