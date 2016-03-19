float[] data = {19.0, 40.0, 75.0, 76.0, 90.0};
float[] halfData;

void setup(){
  halfData = halve(data);
  println(data[0] + ", " + halfData[0]);
  println(data[1] + ", " + halfData[1]);
  println(data[2] + ", " + halfData[2]);
  println(data[3] + ", " + halfData[3]);
  println(data[4] + ", " + halfData[4]);
}

float[] halve(float[] d){
  float[] numbers = new float[d.length];
  arraycopy(d, numbers);
  for(int i = 0; i < numbers.length; i++){
    numbers[i] = numbers[i] / 2;
  }
  return numbers;
}