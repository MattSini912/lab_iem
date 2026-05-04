
int r = 100;
float l = r * sqrt(2);
float move = l / 2;
int dist = 200;

void setup(){
  size(1000,1000);
  ellipseMode(RADIUS);
}

void draw(){
  background(255,255,0);
  fill(255);
  ellipse(width/2 - dist, height/2, r, r);
  ellipse(width/2 + dist, height/2, r, r);
  float x = map(mouseX, 0, width, -move, move);
  float y = map(mouseY, 0, height, -move, move);
  fill(0);
  ellipse(width/2 + x - dist, height/2 + y, 20, 20);
  ellipse(width/2 + x + dist, height/2 + y, 20, 20);
}
