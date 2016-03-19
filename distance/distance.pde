//Distance - measuring the distance between objects

void setup(){
  size(displayWidth, displayHeight, P2D);
  pixelDensity(2);
  smooth();
}
void draw(){
  background(255, 209, 93);
  float d = dist(width/2, height/2, mouseX, mouseY);
  ellipse(width/2, height/2, d*2, d*2);
}