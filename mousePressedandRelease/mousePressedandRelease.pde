void setup(){
  size(displayWidth, displayHeight);
}
void draw(){  
  background(155, 103, 151);  
  fill(72, 13, 68);
  ellipse(mouseX, mouseY, 400, 400);
}
void mousePressed(){
  fill(240, 150, 247);
  ellipse(mouseX, mouseY, 400, 400);
}

void mouseReleased(){
  fill(159, 152, 160);
  ellipse(mouseX, mouseY, 400, 400);
}