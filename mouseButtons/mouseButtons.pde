void setup(){
  size(displayWidth, displayHeight);
  pixelDensity(2);
  smooth();
  background(204, 123, 12);
}
void draw(){
  if(mouseButton == LEFT){
    cursor(HAND);
    fill(255);
  } else if (mouseButton == RIGHT) {
    fill(0);
    cursor(MOVE);
  } else {
    fill(126);
  }
  rect(25, 25, 50, 50);
}