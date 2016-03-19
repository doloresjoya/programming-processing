//Basic text editor. Can insert and remove text.
PFont font;
String letters = ""; 
int back = 102;

void setup(){
  size(displayWidth, displayHeight);
  font = loadFont("Serif-48.vlw");
  textFont(font);
  textAlign(CENTER);
}

void draw(){
  background(back);
  float cursorPosition = textWidth(letters);
  line(cursorPosition, 0, cursorPosition, 100);
  text(letters, displayWidth/2, 50);
}

void keyPressed(){
  if (key == ENTER){
    letters = letters.toLowerCase();
    println(letters);
    if (letters.equals("black")){
      back = 0;
    } else if (letters.equals("gray")){
      back = 204;
    }
    letters = "";
  } else if ((key > 31) && (key != CODED)){
    letters = letters + key;
  }
}