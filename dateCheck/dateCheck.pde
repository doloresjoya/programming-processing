int d = day();
int m = month();
int y = year();


void draw(){
  int d = day();
  if(d == 22){
    println("Welcome to a new month.");
  }
  println(d + " " + m + " " + y);
}