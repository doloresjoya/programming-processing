//calculate the mouse spped by comparing cur pos w/ prev pos
void setup(){
  size(displayWidth, displayHeight, P2D);
  surface.setResizable(true);
  pixelDensity(2);
  smooth();
  noStroke();
}
void draw(){
  background(255, 209, 93);
  float speed = dist(mouseX, mouseY, pmouseX, pmouseY);
  float diameter = speed * 3.0;
  ellipse(50, 50, diameter, diameter);
}