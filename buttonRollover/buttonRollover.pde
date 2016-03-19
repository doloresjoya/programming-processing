//Button Class
class Button {
  int x, y;
  int size;
  color baseGray;
  color overGray;
  color pressGray;
  boolean over = false;
  boolean pressed = false;
  
  Button(int xp, int yp, int s, color b, color o, color p){
    x = xp;
    y = yp;
    size = s;
    baseGray = b;
    overGray = o;
    pressGray = p;
  }
  
  void update(){
    if((mouseX >= x) && (mouseX <= x+size) && (mouseY >= y) && (mouseY <= y+size)){
      over = true;
    } else {
      over = false;
    }
  }
  //Respond to mousePressed() event
  boolean press(){
    if(over == true){
      pressed = true;
      return true;
    } else {
      return false;
    }
  }
  //Respond to mouseReleased() event
  void release(){
    pressed = false;
  }
  
  void display(){
    if (pressed == true){
      fill(pressGray);
    } else if (over == true){
      fill(overGray);
    } else {
      fill(baseGray);
    }
    stroke(255);
    rect(x, y, size, size);
  }
}



// Rectangle Class
class OverRect {
  int x, y;
  int size;
  int gray;
  
  OverRect(int xp, int yp, int s){
    x = xp;
    y = yp;
    size = s;
    gray = 0;
  }
  
  void update(int mx, int my){
    if((mx > x) && (mx < x+size) && (my > y) && (my > y+size)){
      gray = 255;
    } else {
      gray = 0;
    }
  }
  
  void display(){
    fill(gray);
    rect(x, y, size, size);
  }
}


// Circle Class

class OverCircle {
  int x, y; // The x- and y-coordinates
  int diameter; // diameter of the circle
  int gray; // Gray value
  
  OverCircle(int xp, int yp, int d){
    x = xp;
    y = yp;
    diameter = d;
    gray = 0;
  }
  
  void update(int mx, int my){
    if (dist(mx, my, x, y) < diameter/2){
      if(gray < 255){
        gray++;
      }
      //gray = 255;
    } else {
      //gray = 0;
      if(gray > 0){
        gray--;
      }
    }
  }
  
  void display(){
    fill(gray);
    ellipse(x, y, diameter, diameter);
  }
}

OverCircle c;
OverRect r;
Button button;
Button button1, button2, button3;
int mode = 1;

void setup(){
  size(400, 600);
  color gray = color(204);
  color white = color(255);
  color black = color(0);
  button1 = new Button(10, 280, 10, gray, white, black);
  button2 = new Button(25, 280, 10, gray, white, black);
  button3 = new Button(40, 280, 10, gray, white, black);
  
  r = new OverRect(9, 30, 36);
  c = new OverCircle(72, 48, 40);
  noStroke();
  //inputs: x, y, size, base color, over color, press color
  button = new Button(255, 255, 50, color(204), color(255), color(0));
  
}

void draw(){
  background(204);
  manageButtons();
  
  stroke(255);
  if(mode == 1){
    ellipse(0, 340, 60, 60);
  } else if (mode == 2) {
    ellipse(50, 340, 60, 60);
  } else if (mode == 3){
    ellipse(100, 340, 60, 60);
  }
  
  button.update();
  button.display();
  
  r.update(mouseX, mouseY);
  r.display();
  c.update(mouseX, mouseY);
  c.display();
  
}

void mousePressed(){
    //button.press();
    if (button1.press() == true){ mode = 1;}
    if (button2.press() == true){ mode = 2;}
    if (button3.press() == true){ mode = 3;}
}
  
void mouseReleased(){
    //button.release();
    button1.release();
    button2.release();
    button3.release();
}

void manageButtons(){
  button1.update();
  button2.update();
  button3.update();
  button1.display();
  button2.display();
  button3.display();
}