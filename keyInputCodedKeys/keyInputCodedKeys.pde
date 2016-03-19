color y = 35;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  strokeWeight(8);
}
void draw(){
  background(204, 23, 45);
  line(10, 50, 90, 50);
  if (key == CODED){
    if(keyCode == UP){
      y = 20;
    } else if (keyCode == DOWN){
      y = 50;
    }
  } else {
    y = 35;
  }
  rect(25, y, 50, 30);
}