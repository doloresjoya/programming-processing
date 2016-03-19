int x = 63;
int r = 85;
int n = 18;

void setup(){
  size(400, 400);
  noStroke();
  smooth();
  noLoop();
}

void draw(){
  drawCircle(63, 85, 6);
}

void drawCircle(int x, int radius, int num){
  float tt = 126 * num/4.0;
  fill(tt);
  ellipse(x, 50, radius*2, radius*2);
  if (num > 1){
    num = num - 1;
    drawCircle(x-radius/2, radius/2, num);
    drawCircle(x+radius/2, radius/2, num);
  }
}