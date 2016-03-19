//each circle has the same position and rate of growth 
//cycle, but the growth cycle is offset.

float angle = 0.0;
float speed = 0.05;

void setup(){
  size(300, 300);
  noStroke();
  smooth();
  pixelDensity(2);
  fill(255, 180);
}
void draw(){
  background(0);
  circlePhase(0.0);
  circlePhase(QUARTER_PI);
  circlePhase(HALF_PI);
  angle += speed;
  println(angle);
}

void circlePhase(float phase){
  float diameter = 68 + (sin(angle+phase) * 74);
  ellipse(149, 140, diameter, diameter);
}