//Adding values from sin() and cos() can produce more 
//complex movement that remains periodic. 
//In this example, a small dot moves in a circular 
//pattern using values from sin() and cos(). A larger 
//dot uses the same values for its base position but 
//adds additional sin() and cos() calculations to 
//produce an offset. You can easily see the difference 
//between the two movements by looking at the positions 
//of each point as the program runs. 

float angle = 0.0;
float speed = 0.05;
float radius = 60.0;
float sx = 2.0;
float sy = 2.0;

void setup(){
  size(300, 300);
  noStroke();
  smooth();
  //pixelDensity(2);
}
void draw(){
  fill(0,4);
  rect(0, 0, width, height);
  angle += speed;
  float sinval = sin(angle);
  float cosval = cos(angle);
  float x = 113 + (cosval * radius);
  float y = 107 + (sinval * radius);
  fill(255);
  ellipse(x, y, 2, 2);
  float x2 = x + cos(angle * sx) * radius/11;
  float y2 = y + sin(angle * sy) * radius/2;
  ellipse(x2, y2, 42, 9);
}