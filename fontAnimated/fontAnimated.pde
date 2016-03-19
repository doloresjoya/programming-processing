PFont font;
float x1 = 0;
float x2 = 100;
String s = "Pea";

void setup(){
  size(400, 400);
  font = loadFont("HelveticaNeue-Light-48.vlw");
  textFont(font);
  fill(198, 68, 68);
}

void draw(){
  background(23, 76, 87);
  text("Right", x1, 50);
  text("Left", x2, 100);
  
  x1 += 1.0;
  
    if(x1 > 100){ 
    x2 -= 0.8;
  }
    if(x2 < -150){
    x2 = 100;s
  }

}