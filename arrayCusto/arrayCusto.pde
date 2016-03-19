int[] bar = {20, 30, 40, 50, 60, 70, 80, 90};

void setup(){
  size(400, 400);
}

void draw(){
  for(int i = 0; i < bar.length; i++){
    rect(30, bar[i], 300, 200);
  }
}