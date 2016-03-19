//dist(); function demo w/ mouseX, mouseY, pmouseX, pmouseY as input
//calculate the mouse speed by comparing cur pos w/ prev pos
float speed = 0.0;
float easing = 0.05;

void setup(){
  size(displayWidth, displayHeight, P2D);
  surface.setResizable(true);
  pixelDensity(2);
  smooth();
  noStroke();
}
void draw(){
  background(255, 209, 93);
  float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;
  rect(0, 33, target, 17);
  rect(0, 50, speed, 17);
}