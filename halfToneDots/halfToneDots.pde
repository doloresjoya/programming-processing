//Distance - draw a grid and calculate the distance to each

float maxDistance;

void setup(){
  size(displayWidth, displayHeight);
  noStroke();
  smooth();
  fill(225, 33, 93);
  maxDistance = dist(0, 0, width, height);
}
void draw(){
  background(255, 209, 93);
  for(int i = 0; i <= width; i += 20){
    for(int j = 0; j <= height; j += 20){
      float mouseDist = dist(mouseX, mouseY, i, j);
      float diameter = (mouseDist/maxDistance)* 66.0;
      ellipse(i, j, diameter, diameter);
    }
  }
}