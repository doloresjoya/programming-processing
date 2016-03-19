//atan2() - calculate the angle from any point to the coor (0,0)

// The angles increase as the mouse moves from the upper-right
// corner of the screen to the lower-left corner

void setup(){
  size(displayWidth, displayHeight, P2D);
  surface.setResizable(true);
  pixelDensity(2);
  smooth();
  fill(24, 124, 53);
}

void draw(){
  float angle = atan2(mouseY, mouseX);
  float deg = degrees(angle);
  println(deg);
  background(255, 209, 93);
  ellipse(mouseX, mouseY, 8, 8);
  rotate(angle);
  line(0, 0, 150, 0);
}