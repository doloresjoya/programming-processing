void setup(){
  size(displayWidth, displayHeight);
  noLoop();
}
void draw(){  
    background(204);
    line(mouseX, 0, mouseX, 100);    
}
void mousePressed(){
  redraw();
}