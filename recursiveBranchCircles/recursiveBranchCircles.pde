int x = 63;
int r = 85;
int n = 6;

void setup(){
  size(displayWidth, displayHeight);
  pixelDensity(2);
  noStroke();
  smooth();
  noLoop();
}

void draw(){
  drawCircle(displayWidth/2, displayHeight/2, 6);
}

void drawCircle(int x, int radius, int num){
  float tt = 126 * num/4.0;
  fill(tt);
  ellipse(x, 50, radius*2, radius*2);
  if(num > 1){
    num = num -1;
    drawCircle(x - radius/2, radius/2, num);
    drawCircle(x + radius/2, radius/2, num);
  }
}