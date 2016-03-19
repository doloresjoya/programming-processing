//mouseMoved() is run at the end of each frame
int dragX, dragY, moveX, moveY;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  noStroke();
  fill(126, 219, 131);
}

void draw(){
}

void keyPressed(){
  int y = key + 32;
  rect(0, y, 100, 4);
}