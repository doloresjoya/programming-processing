//mouseMoved() is run at the end of each frame
int dragX, dragY, moveX, moveY;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  noStroke();
  fill();
}

void draw(){
  background(132, 59, 147);
  fill(0);
  ellipse(dragX, dragY, 33, 33);
  fill(229, 83, 229);
  ellipse(mouseX, mouseY, 33, 33);
}

void mouseMoved(){
  moveX = mouseX;
  moveY = mouseY;
}

void mouseDragged(){
  dragX = mouseX;
  dragY = mouseY;
}