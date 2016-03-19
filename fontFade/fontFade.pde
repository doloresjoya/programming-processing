PFont font;
int opacity = 0;
int direction = 1;

void setup(){
  size(400, 400);
  font = loadFont("HelveticaNeue-Light-48.vlw");
  textFont(font);
  fill(198, 68, 68);
}

void draw(){
  background(23, 76, 87);
  opacity += 2 * direction;
  if((opacity < 0) || (opacity > 255)){
    direction = -direction;
  }
  fill(0, opacity);
  text("fade", 4, 60);
}