void setup(){
  size(displayWidth, displayHeight);
  pixelDensity(2);
  strokeWeight(8);
  smooth();
  background(204, 123, 12);
}
void draw(){
  line(mouseX, mouseY, pmouseX, pmouseY);
  translate(mouseX, mouseY);
  ellipse(0,0,33,33);
}