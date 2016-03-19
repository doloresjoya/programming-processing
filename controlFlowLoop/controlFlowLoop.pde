int frame = 0;

void setup(){
  size(displayWidth, displayHeight);
  frameRate(30);
}
void draw(){
  if (frame > 60){
    noLoop();
    background(0);
  } else {
    background(204);
    line(mouseX, 0, mouseX, 100);
    line(0, mouseY, 0, mouseY);
    frame++;
  }
}
void mousePressed(){
  loop();
  frame = 0;
}