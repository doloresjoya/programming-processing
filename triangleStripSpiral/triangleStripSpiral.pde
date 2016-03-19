// TRIANGLE_STRIP Spiral
void setup(){
  size(400, 400);
  background(0);
  smooth();
  drawSpiral(width/2,height/2,120,140,36);
}
void drawSpiral(float x,float y,float outerRadius, float innerRadius, int pts){
  float px=0,py=0,angle=0;
  float rot=360.0/pts;
  int fillCol=255;
  int fillfade = int(fillCol)/pts;
  beginShape(TRIANGLE_STRIP);
  for (int i=0; i<pts; i++) {
    px = x+cos(radians(angle))*outerRadius;
    py = y+sin(radians(angle))*outerRadius;
    angle+=rot;
    vertex(px, py);
    px = x+cos(radians(angle))*innerRadius;
    py = y+sin(radians(angle))*innerRadius;
    vertex(px, py);
    outerRadius-=4;
    innerRadius-=4.25;
    fill(fillCol);
    fillCol-=fillfade;
    angle+=rot;
  }
  endShape();
}