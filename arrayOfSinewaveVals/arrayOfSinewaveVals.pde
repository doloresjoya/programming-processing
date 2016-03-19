//Store sinwave values into an array and display as strokes
float[] sineWave = new float[width];

for(int i = 0; i < width; i++){
  float r = map(i, 0, width, 0, TWO_PI);
  sineWave[i] = abs(sin(r));
}

for(int i = 0; i < sineWave.length; i++){
  stroke(sineWave[i] * 255);
  line(i, 0, i, height);
}