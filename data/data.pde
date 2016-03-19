void setup(){
  size(1024, 768);
  //fullScreen(P3D, 1); //full screen on 1, or 2 monitor
  pixelDensity(2); // for retina displays
}

void draw(){
  boolean b = false;
  
  if(b = false){ //<>//
  noStroke();
  smooth();
  for(int y = 0; y < 768; y += 11){ //<>//
    for(int x = 0; x < 1024; x += 31){
      fill((x+y) * 0.2);
      rect(x, y, 117, 311);
   }  
  } 
  } else {
  stroke(0);
  strokeWeight(1); 
  for(int l = 5; l < 200; l += 10){
    for(int r = 5; r < 500; r += 5){
      stroke(255-l);
      line(0, l, 1024, l);
      stroke(255-r);
      line(r, 5, r, 768);
    }
  }
 }
 
 noFill();
 beginShape();
 vertex(30, 20);
 vertex(85, 20);
 vertex(85, 75);
 vertex(30, 75);
 endShape(CLOSE);
 
 noStroke();
 fill(0);
 beginShape();
 vertex(40, 10);
 for(int i = 20; i <= 100; i += 5){
   vertex(20, i);
   vertex(30, i);
 }
 vertex(40, 100);
 endShape();
 
 stroke(0);
 strokeWeight(2);
 point(mouseX, mouseY);
 println(mouseX + mouseY);
 
 smooth();
 noStroke();
 beginShape();
 vertex(90, 39);
 bezierVertex(90, 39, 54, 17, 26, 83);
 bezierVertex(26, 83, 90, 107, 90, 39);
 endShape();
}