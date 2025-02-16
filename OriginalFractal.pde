public void setup(){
  size(600, 600);
  background(0);
  stroke(255);
  fractalTree(width/2, height, 160, -PI/2, 9);
}
public void draw(){
}

public void fractalTree(float x, float y, float len, float angle, float depth){
  if (depth == 0){
    return;
  }
  float x2 = x + len * cos(angle);
  float y2 = y + len * sin(angle);
  line(x, y, x2, y2);
  //0.67
  fractalTree(x2, y2, len * 0.7, angle + PI/5, depth - 1); //right branch
  fractalTree(x2, y2, len * 0.7, angle - PI/5, depth - 1); // left branch
  fractalTree(x2, y2, len * 0.4, angle + PI, depth - 1);  // Extra Right
  fractalTree(x2, y2, len * 0.4, angle - PI, depth - 1);  // Extra Left
}
