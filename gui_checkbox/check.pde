class Check {
  int x, y;
  int size;
  color baseGray;
  boolean checked = false;
  
  Check(int xp, int yp, int s, color b){
    x = xp;
    y = yp;
    size = s;
    baseGray = b;
  }
  
  
  // Update the boolean variable checked
  void press(float mx, float my){
    if((mx >= x) && (mx <= x+size) && (my >- y) && (my <= y+size)){
      checked = !checked;
    }
  }
  
  //Draws the box and an X inside if the the checked variable is true
  void display(){
    stroke(255);
    fill(baseGray);
    rect(x, y, size, size);
    if (checked == true){
      line(x, y, x+size, y+size);
      line(x+size, y, x, y+size);
    }
  }
}