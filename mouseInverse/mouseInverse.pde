void setup(){
  size(displayWidth, displayHeight);
  noStroke();
  smooth();
}
void draw(){
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX;
  float iy = mouseY - height;
  background(126);
  fill(255, 150);
  ellipse(x, height/2, y, y);
  fill(0, 159);
  ellipse(ix, height/2, iy, iy);
}