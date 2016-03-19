Spot sp;

void setup(){
  size(400, 400);
  noStroke();
  sp = new Spot();
  sp.x = 33;
  sp.y = 50;
  sp.diameter = 30;
}

void draw(){
  background(0);
  sp.display();
}


class Spot{
  float x, y, diameter;
  
  void display(){
    ellipse(x, y, diameter, diameter);
  }
  
}