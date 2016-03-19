void setup() {
  size(640, 640);
  noStroke();
}
 
void draw() {
  background(20);
  fill(0, 150, 255);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=10) {
    float x = asin(sin(radians(i+frameCount)))*50;
    float y = acos(cos(radians(i+frameCount)))*50;
    float s = abs(sin(radians(i+frameCount))*10);
    ellipse(20+y, -x, s, s);
    ellipse(-20-y, x, s, s);
    ellipse(x, -y-20, s, s);
    ellipse(-x, y+20, s, s);
  }
}