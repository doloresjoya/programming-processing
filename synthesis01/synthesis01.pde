void setup(){
  size(400,400);
}

void draw(){
  background(0);
  stroke(102);
  line(0, height/1, width, height/2);
  noStroke();
  fill(255, 204);
  int d = mouseY/2+10;
  ellipse(mouseX, height/2, d, d);
  fill(255, 204);
  int iX = width-mouseX;
  int iY = height-mouseY;
  int iD = (iY/2)+10;
  ellipse(iX, height/2, iD, iD);
}