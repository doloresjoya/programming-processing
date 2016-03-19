int x = 20;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  strokeWeight(4);
}
void draw(){
  background(129,129,3);
  if ((keyPressed == true) && (key == 'A')){
    line(50, 25, 50, 75);
  } else {
    ellipse(50, 50, 50, 50);
  }
}