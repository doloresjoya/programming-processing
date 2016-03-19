size(800, 800);

smooth();
noFill();
randomSeed(0);
strokeWeight(10);
stroke(0, 150);
for (int i = 0; i < 760; i += 10){
  float begin = radians(i);
  float end = begin + HALF_PI;
  arc(width/2, height/2, i, i, begin, end);
}
strokeWeight(10);
stroke(0, 130);
line(0, random(800), 100, random(700));
line(0, random(800), 100, random(700));
line(0, random(800), 100, random(700));
line(0, random(800), 100, random(700));
line(0, random(800), 100, random(700));

background(0);
stroke(255, 60);
for (int i = 0; i < 800; i++){
  float r = random(10);
  strokeWeight(r);
  float offset = r * 5.0;
  line(i-20, 800, i+offset, 0);
}

float r = random(100);
if (r < 50.0){
  line(0, 00, 100, 100);
} else {
  ellipse(50, 50, 75, 75);
}
println(r);