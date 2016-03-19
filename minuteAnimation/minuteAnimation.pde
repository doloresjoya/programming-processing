int s = second();
int m = minute();
int h = hour();


void draw(){
  int m = minute();
  if(m == 0){
    noStroke();
    fill(80, 45, 88);
    ellipse(s, s, h, h);
  }
}