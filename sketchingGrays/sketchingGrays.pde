void setup(){
  size(displayWidth, displayHeight);
  pixelDensity(2);
  smooth();
  background(104, 123, 12);
}
void draw(){
  
  //point(mouseX, mouseY);
  if (mousePressed == true){
  stroke(255);
  strokeWeight(6);
  } else {
    stroke(0);
    strokeWeight(2);
  }
  line(mouseX, mouseY, pmouseX, pmouseY);
}