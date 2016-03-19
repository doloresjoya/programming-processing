float angle = 0.0; // Current angle
float speed = 0.1; // Speed of motion
float radius = 240.0; // Range of motion
float sx = 1.0;
float sy = 0.5;

void setup(){
  size(displayWidth, displayHeight);
  //noStroke();
  smooth();
  //pixelDensity(2);
}

void draw(){
  fill(49, 92, 196, 12);
  rect(0, 0, width, height);
  
  angle += speed; // Update the angle
  float sinval = sin(angle);
  float cosval = cos(angle);
  
  float x = 50 + (cosval * radius);
  float y = 50 + (sinval * radius);
  fill(17, 61, 167);
  
  ellipse(x, y, 2, 2);
  
  float x2 = x + cos(angle * sx) * radius/2;
  float y2 = y + sin(angle * sy) * radius/2;
  
  ellipse(x2, y2, 6, 6);
  
  //Draw Grid
  for(int i = 0; i <= 1024; i+= 10){
    for(int j = 0; j <= 768; j+= 10){
      line(i, j, i, j);
    }
  }
  
}