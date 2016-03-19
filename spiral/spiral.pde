noStroke();
smooth();
float radius = 1.0;
for (int deg = 0; deg < 360*6; deg += 11){
  float angle = radians(deg);
  float x = 75 + (sin(angle) * radius); //<>//
  float y = 42 + (cos(angle) * radius); //<>//
  ellipse(x, y, 6, 6); //<>//
  radius = radius + 0.34;
}