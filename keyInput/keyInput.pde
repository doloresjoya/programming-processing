PFont font;
int x = 20;

void setup(){
  size(displayWidth, displayHeight);
  smooth();
  strokeWeight(4);
  
  font = loadFont("Roboto-Light.ttf");
  textFont(font);
}
void draw(){
  background(129,129,3);
  text(key, 28, 75);
  if(keyPressed == true){
    x++;
  } 
  line(x, 20, x-60, 80);
}