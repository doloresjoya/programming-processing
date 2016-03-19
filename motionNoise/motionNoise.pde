float inc1 = 0.1;
float n1 = 0.0;
float inc2 = 0.09;
float n2 = 0.0;

void setup(){
  size(200, 200);
  stroke(255);
  strokeWeight(20);
  smooth();
}

void draw(){
  background(12, 13, 120);
  float y1 = (noise(n1) - 0.5) * 30.0;
  float y2 = (noise(n2) - 0.5) * 30.0;
  line(0, 50, 40, 50 + y1);
  line(100, 50, 60, 50 + y2);
  n1 += inc1;
  n2 += inc2;
}