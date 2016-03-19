Diagonals da, db;


void setup(){
  size(600, 300);
  smooth();
  da = new Diagonals(0,80,1,2,0);
  db = new Diagonals(0,55,2,6,255);
}

void draw(){
  background(204);
  da.update();
  db.update();
}

class Diagonals {
  int x, y, speed, thick, gray;
  
  Diagonals(int xpos, int ypos, int s, int t, int g){
    x = xpos;
    println(x);
    y = ypos;
    speed = s;
    println(s);
    thick = t;
    println(t + ":" + s);
    gray = g;
    println(g);
  }


  void update(){
    strokeWeight(12);
    strokeJoin(ROUND);
    rect(30,25, 300, 250);
    
    strokeWeight(1);
    stroke(0);
    fill(25, 20);
    point (20,20);
    bezier(32, 20, 180, 125, 80, 75, 30, 75);
    line(32,20,80,5);
    ellipse(80,5,4,4);
    line(80,75,30,75);
    ellipse(80,75,4,4);
    triangle(55,9,110,100,85,100);
    line(x, y, x+100, y);
    line(x, y, x, y+100);
    line(x, y, x+20, y-40);
    line(x+10, y, x+30, y-40);
    line(x+20, y, x+40, y-40);
    x = x + speed;
    if(x > 100){
      x = -100;
    }
  }
}