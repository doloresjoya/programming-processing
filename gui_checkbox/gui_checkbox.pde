int numChecks = 25;
Check[] checks = new Check[numChecks];

void setup() {
  size(300, 300);
  int x = 14;
  int y = 14;
  for(int i = 0; i < checks.length; i++){
    checks[i] = new Check(x, y, 12, color(0));
    x += 15;
    if(x > 80) {
      x = 14;
      y += 15;
    }
  }
}

void draw() {
  background(0);
  for (Check ch : checks){
    ch.display();
  }
}

void mousePressed() {
  for (Check ch : checks){
    ch.press(mouseX, mouseY);
  }
}


// Check single instance
//Check check;

//void setup(){
// size(100, 100);
// // Inputs: x, y, size, fill color
// check = new Check(25, 25, 50, color(0));
//}

//void draw(){
// background(204);
// check.display();
//}

//void mousePressed(){
// check.press(mouseX, mouseY);
//}