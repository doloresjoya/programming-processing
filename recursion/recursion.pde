int x = 250;
int y = 200;
int a = 50;
int n = 18;

void setup(){
  size(400, 400);
  noLoop();
}

void draw(){
  drawT(x, y, a, n);
}

void drawT(int x, int y, int apex, int num){
  line(x, y, x, y-apex);
  line(x-apex, y-apex, x+apex, y-apex);
  if (num > 0){
    drawT(x-apex, y-apex, apex/2, num-1);
    drawT(x+apex, y-apex, apex/2, num-1);
  }
}