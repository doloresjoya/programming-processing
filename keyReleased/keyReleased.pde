//mouseMoved() is run at the end of each frame
int dragX, dragY, moveX, moveY;

boolean drawT = false;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  noStroke();
}

void draw(){
  background(183, 126, 219);
  if (drawT == true){
    rect(20, 20, 60, 20);
    rect(39, 40, 22, 45);
  }
}

void keyPressed(){
  if((key =='T') || (key == 't')){
    drawT = true;
  }
}

void keyReleased(){
  drawT = false;
}