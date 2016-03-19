void setup(){
  size(414, 736);
  
}

void draw(){
  background(120);
  if (mousePressed == true){
    rect(0, 0, 414, 736);
  } else {
    rect(200, 300, 200, 100);
  }
  
}