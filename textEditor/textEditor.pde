//Basic text editor. Can insert and remove text.
PFont font;
String letters = "";


void setup(){
  size(displayWidth, displayHeight);
  font = loadFont("Serif-48.vlw");
  textFont(font);
  stroke(227, 44, 215);
  fill(72, 13, 68);
}

void draw(){
  background(178, 99, 173);
  float cursorPosition = textWidth(letters);
  line(cursorPosition, 0, cursorPosition, 100);
  text(letters, 0, 50);
}

void keyPressed(){
  if(key == BACKSPACE){
    if (letters.length() > 0){
      letters = letters.substring(0, letters.length()-1);
    }
  } else if (textWidth(letters+key) < width){
    letters = letters+key;
  }
}