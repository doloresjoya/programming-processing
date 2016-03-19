void setup() {
  size(640, 640);
  noFill();
}
 
void draw() {
  background(20);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=90) {
    for (int q = 0; q < 360; q+=90) {
      float x = sin(radians(i))*75+sin(radians(q+frameCount))*75;
      float y = cos(radians(i))*75+cos(radians(q+frameCount))*75;
      float s = map(dist(x, y, 0, 0), 0, 150, 100, 10);
      stroke(255, 0, 50, 150);
      strokeWeight(10);
      ellipse(x, y, s, s);
      stroke(50, 0, 255, 150);
      strokeWeight(5);
      ellipse(x, y, s, s);
    }
  }
}