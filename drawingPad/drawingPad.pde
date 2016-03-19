int x = 20;
int u = 4;
float a = -0.12;

void setup(){
  size(displayWidth, displayHeight);
  pixelDensity(2);
  smooth();
  stroke(0, 153);
  background(104, 123, 12);
}
void draw(){
  
  //point(mouseX, mouseY);
  if (mousePressed == true){
  tail(0, 2, 3.35);
  //line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void tail(int xpos, int units, float angle){
  pushMatrix();
  translate(mouseX, mouseY);
  for(int i = units; i > 0; i--){
    strokeWeight(i);
    line(mouseX, mouseY, pmouseX, pmouseY);
    translate(0, 8);
    rotate(angle);
  }
  popMatrix();
}