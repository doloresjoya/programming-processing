//x chases target x with easing

float x = 0.0;
float y = 0.0;
float easing = 0.05; // Numbers 0.0 to 1.0

void setup(){
  size(displayWidth, displayHeight, P2D);
  surface.setResizable(true);
  pixelDensity(2);
  smooth();
}
void draw(){
  background(255, 209, 93);
  float targetX = mouseX;
  //Distance from position and target
  float targetY = mouseY;
  x += (targetX - x) * easing;
  y += (targetY - y) * easing;
  fill(222, 72, 72);
  ellipse(mouseX, mouseY, 40, 40);
  fill(216, 222, 72);
  ellipse(x, y, 40, 40);
  println("targetX = " + targetX);
  println("x = " + x);
}