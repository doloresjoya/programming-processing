void setup(){
  size(100, 100);
  strokeWeight(8);
  smooth();
  fill(0);
}
void draw(){
  background(204);
  //line(mouseX, mouseY, pmouseX, pmouseY);
  if(mouseX < 50){
    rect(0, 0, 50, 100);
  } else {
    rect(50, 0, 50, 100);
  }
}