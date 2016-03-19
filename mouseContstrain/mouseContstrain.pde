//Constrains the position of the ellipse to a region
void setup(){
  size(displayWidth, displayHeight);
  smooth();
  noStroke();
}
void draw(){
  background(255, 209, 93);
  float mx = constrain(mouseX, 35, 650);
  float my = constrain(mouseY, 40, 600);
  fill(102);
  rect(20, 25, 800, 800);
  fill(255);
  ellipse(mx, my, 30, 30);
}