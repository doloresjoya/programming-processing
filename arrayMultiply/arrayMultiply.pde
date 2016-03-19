float[] paris = {10, 14, 12, 15};
float[] multiplyParis = {2, 3, 4, 5};

void setup(){
}

void draw(){
  multiplyParis = multiply(paris);
  println(paris[0] + ", " + multiplyParis[0]);
}

float[] multiply(float[] d){
  float[] numbers = new float[d.length]; //create a new array
  arraycopy(d,numbers);
  for(int i = 0; i < numbers.length; i++){
    numbers[i] = numbers[i] * multiplyParis[i];
  }
  return numbers;
}