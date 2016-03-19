class PVector {

  float x;
  float y;

  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }

  //[full] New! A function to add another PVector to this PVector.  Simply add the <em>x</em> components and the <em>y</em> components together.
  void add(PVector v) { //[bold]
    y = y + v.y; //[bold]
    x = x + v.x; //[bold]
  } //[bold]
  //[end]
}