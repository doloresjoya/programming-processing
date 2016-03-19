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
  float dx = targetX - x;
  // If the distance bet cur and dest > 1.0, update position
  if (abs(dx) > 1.0){
    x += dx * easing;
  }
  fill(222, 72, 72);
  ellipse(mouseX, 30, 40, 40);
  ellipse(x, 70, 40, 40);
}