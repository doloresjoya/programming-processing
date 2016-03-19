PFont font;
String[] words = {"Three", "strikes", "and", "you're", "out..", " "};

int whichWord = 0;

void setup(){
  size(400, 400);
  font = loadFont("HelveticaNeue-Light-48.vlw");
  textFont(font);
  textAlign(CENTER);
  frameRate(1);
}

void draw(){
 background(204); 
 whichWord++;
 if(whichWord == words.length){
   whichWord = 0;
 }
 text(words[whichWord], width/2, 55);
}