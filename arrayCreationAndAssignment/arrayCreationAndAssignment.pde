int[] data = {19, 40, 75, 76, 90};
for(int i = 0; i < data.length; i++){
  stroke(134, 27, 165);
  line(data[i], 0, data[i], 100);
}


//// Three methods for creating an array
//int[] data;  // Declare
//void setup(){
//  size(400, 400);
//  data = new int[5];  // Create
//  data[0] = 19;       // Assign
//  data[1] = 40;
//  data[2] = 75;
//  data[3] = 76;
//  data[4] = 90;
//}

//int[] data = new int[5]; // Declare, create
//void setup(){
//  size(400, 400);
//  data[0] = 19;       // Assign
//  data[1] = 40;
//  data[2] = 75;
//  data[3] = 76;
//  data[4] = 90;
//}

//int[] data = {19, 40, 75, 76, 90};
//void setup(){
//  size(400, 400);
//}