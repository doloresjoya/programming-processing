//Equilateral Triangle

int x1 = 300;
int y = 300;
  
void setup(){
  size(600, 600);
  pixelDensity(2);
  //smooth();
  stroke(26, 207, 255, 100);
  strokeWeight(3);
}

void draw(){
  background(144, 64, 198);
  ellipseMode(CENTER); //draw a circle from center
  line(300, 0, 300, 600);
  ellipse(x1, 300, 25, 25);
  noFill();
  ellipseMode(RADIUS);
  ellipse(x1, 300, 300, 300);
  arc(300, 600, 300, 300, HALF_PI, TWO_PI);
  triangle(x1, 0, 40, 450, 560, 450);
}