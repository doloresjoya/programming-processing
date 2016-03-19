void setup(){
  size(500, 500);
  smooth();
}
void draw(){
  background(45, 78, 88);
  fill(209, 245, 255);
  noStroke();
  translate(200, 200);
  ellipse(50, 50, 80, 80);
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
  stroke(10, 86, 108);
  strokeWeight(1);
  line(50, 50, cos(s) * 38 + 50, sin(s) * 38 + 50);
  strokeWeight(3);
  line(50, 50, cos(m) * 30 + 50, sin(m) * 30 + 50);
  line(50, 50, cos(h) * 25 + 50, sin(h) * 25 + 50);
}