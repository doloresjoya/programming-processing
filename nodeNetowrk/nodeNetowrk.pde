Node[] nodes = new Node[100];
int nodeCount = 0;

void setup(){
  size(400, 400);
  for (int i = 0; i < nodes.length; i++){
    nodes[i] = new Node(i, nodes);
  }
}
void draw(){
  background(0);
  for(int i = 0; i < nodeCount; i++){
    nodes[i].display();
    nodes[i].displayNetwork(nodeCount);
  }
}

void mousePressed(){
  if (nodeCount < nodes.length){
    nodes[nodeCount].setPosition();
    nodeCount++;
  }
}


class Node {
  int x;
  int y;
  int radius = 50;
  int id;
  Node[] otherNodes;
  
  Node(int tempId, Node[] tempOthers){
    id = tempId;
    otherNodes = tempOthers;
  }
  
  void setPosition(){
    x = mouseX;
    y = mouseY;
  }
  
  void display(){
    ellipseMode(RADIUS);
    noStroke();
    fill(255, 40);
    ellipse(x, y, radius, radius);
  }
  
  void displayNetwork(int nodeCount){
    stroke(255);
    
    for(int i = id+1; i < nodeCount; i++){
      if (overlap(otherNodes[i])){
        line(x, y, otherNodes[i].x, otherNodes[i].y);
      }
    }
  }
  
  
  boolean overlap(Node n){
    float distanceFromCenters = dist(x, y, n.x, n.y);
    float diameter = radius + n.radius;
    if(distanceFromCenters < diameter){
      return true;
    } else {
      return false;
    }
  }
}