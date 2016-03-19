int lastSecond = 0;

void setup(){
  //size(P2D);
  surface.setResizable(true);
  pixelDensity(2);
  smooth();
  fill(24, 124, 53);
  background(198, 88, 180);
  
}

void draw(){
  int s = second();
  int m = minute();
  int h = hour();
  if (s != lastSecond){
    println(h + ":" + m + ":" + s);
    lastSecond = s;
  }
}