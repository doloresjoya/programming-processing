PFont font;

void setup(){
  size(200, 200, P2D);
  pixelDensity(2);
  smooth();
 
  
  font = loadFont("SourceSansPro-It-24.vlw");
  textFont(font);
}

void draw(){
  background(198, 88, 180);
  int s = second();
  int m = minute();
  int h = hour();
  String t = nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2);
  fill(70, 5, 77);
  text(t, 10, 55);
}