int[] x = new int[100];
int count;

void setup(){
  size(400, 400);
}

void draw(){
  x[count] = mouseX; //Store mouseX coors in array "x"
  count++; //Increment array
  if (count == x.length){ //if array is full
    x = expand(x); //double the size
    println(x.length);
  }
}