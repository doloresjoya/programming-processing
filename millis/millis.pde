// Uses millis() function to start a line in motion 3 sec
// after program starts

int x = 0;

void setup(){
  size(1000, 100);
}

void draw(){
  if (millis() > 3000){
    x++;
  }
  line(x, 0, x, 100);
  println(x);
}