void setup(){
  size(100,100);
  smooth();
  noLoop();
}
void draw(){
  drawX(160, 20, 0, 5, 36);
  drawX(0, 10, 30, 20, 60);
  drawX(255, 2, 20, 38, 60);
}

void drawX(int gray, int weight, int x, int y, int size){
  // Draw thick, light gray X
  stroke(gray);
  strokeWeight(weight);
  line(x, y, x+size, y+size);
  line(x+size, y, x, y+size);
}