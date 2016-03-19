 void setup(){
  size(800,800);
  background(255);
  //fullScreen(P3D, 1); //full screen on 1, or 2 monitor
  pixelDensity(2); // for retina displays
}

void draw(){
  colorMode(HSB);
  noFill();
  smooth();
  for(int x =0; x < 100; x +=5){
    float n = norm(x, 0.0, 100.0);
    float y = pow(n, 4);
    y *= 10;
    strokeWeight(n * 5);
      for(int c = 0; c <100; c++){
        stroke(c*2.5, 255, 255);       
        ellipse(x, y, 200, 200);    
      }    
  }   
  println(PI);
}