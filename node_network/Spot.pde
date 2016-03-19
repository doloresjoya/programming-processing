class Spot{
  float x, y;      // X-coordinate, y-coordinate
  float diameter;  //Diameter of the circle
  float speed;      // Distance moved each from
  int direction = 1; // Direction of motion (1 is down, -1 is up)
  
  //Constructor
  Spot(float xpos, float ypos, float dia, float sp){
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
  
  void move(){
    y += (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2)){
      direction *= -1;
    }
  }
  
  void display(){    
    ellipseMode(RADIUS);
    x1 = width/2;
    y1 = width/2;
    ellipse(x1, y1, diameter, diameter);   
    ellipse(x2, y2, radius, radius);
  }
  
 
}


//Spot sp;

//void setup(){
//  size(400, 400);
//  noStroke();
//  sp = new Spot(33, 50, 30, 1.5);
//}

//void draw(){
//  fill(0, 15);
//  rect(0, 0, width, height);
//  fill(255);
//  sp.move();
//  sp.display();
//}