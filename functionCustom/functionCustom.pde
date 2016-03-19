void setup(){
  size(500,500);
  
}
void draw(){
  for(int x = 0; x < 500; x += 10){
    for(int l = 0; l < 255; l += 10){
    circleDraw(x,l);
    }
  }
}


void circleDraw(int x, int l){
  translate(10,10);
  rotate(PI/2);
  stroke(l);
  int y = y = width/12;
  rect(x,y, 200, 200);
  println(l);
}