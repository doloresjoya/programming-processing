void setup() {
  size(400, 400, P2D);
  //surface.setResizable(true);
  //safe way to alter sketch size
  //fullscreen();
  pixelDensity(2);
  noStroke();
}

void draw() {
  background(0);
  ellipse(30, 48, 36, 36);
  ellipse(70, 48, 36, 36);
}