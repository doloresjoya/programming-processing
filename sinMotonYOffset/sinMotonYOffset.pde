float angle = 0.0; // Current angle
float speed = 0.1; // Speed of motion
float radius = 240.0; // Range of motion

void setup(){
  size(400, 400);
  //noStroke();
  smooth();
  //pixelDensity(2);
}

void draw(){
  fill(49, 92, 196, 12);
  rect(0, 0, width, height);
  fill(17, 61, 167);
  angle += speed;
  float sinval = sin(angle);
  float yoffset = sinval * radius;
  ellipse(50, 50 + yoffset, 80, 80);
  
  //Draw Grid
  for(int i = 0; i <= 400; i+= 10){
    for(int j = 0; j <= 400; j+= 10){
      line(i, j, i, j);
    }
  }
  
}