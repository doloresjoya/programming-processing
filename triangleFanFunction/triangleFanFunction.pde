
void setup(){
  size(800, 800);
  smooth();
  strokeWeight(1.5);
  tessellate(width/2,height/2,6,0,120);
}


void tessellate(float x,float y, int pts, float angle, float radius){
  switch(pts){
    case 6:
    for (int i = 0; i<=width+radius; i+=2*radius){
      for (int j = 0; j<=height+radius; j+=cos(radians(30))*radius*2){
        drawOct(i, j-cos(radians(30))*radius, pts, 0, radius);
        drawOct(i, j, pts, 0, radius);
      }
    }
    break;
    default:
    for (int i = 0; i<=width+radius; i+=radius*2){
      for (int j = 0; j<=height+radius; j+=radius*2){
        drawTriangle(i-radius, j-radius, pts, 0, radius);
        drawTriangle(i, j, pts, 0, radius);
      }
    }
  }
  
}

void drawTriangle(float x,float y, int pts, float angle, float radius){
  float px = 0, py = 0;
 // needs to rotate clockwise
  beginShape(TRIANGLE_FAN);
  vertex(x, y);
  for (int i=0; i<=pts; i++){
    fill(255/pts*i);
    px = x+cos(radians(angle))*radius;
    py = y+sin(radians(angle))*radius;
    vertex(px, py);
    angle+=360/pts;
  }
}

void drawOct(float x,float y, int pts, float angle, float radius){
  float px = 0, py = 0;
 // needs to rotate clockwise
  beginShape(TRIANGLE_FAN);
  vertex(x, y);
  for (int i=0; i<=pts; i++){
    fill(255/pts*i);
    px = x+cos(radians(angle))*radius;
    py = y+sin(radians(angle))*radius;
    vertex(px, py);
    angle+=360/pts;
  }
}

void drawQuad(float x,float y, int pts, float angle, float radius){
  float px = 0, py = 0;
 // needs to rotate clockwise
  beginShape(TRIANGLE_FAN);
  vertex(x, y);
  for (int i=0; i<=pts; i++){
    fill(255/pts*i);
    px = x+cos(radians(angle))*radius;
    py = y+sin(radians(angle))*radius;
    vertex(px, py);
    angle+=360/pts;
  }
}