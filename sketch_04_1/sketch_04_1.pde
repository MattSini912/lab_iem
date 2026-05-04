
float r = 100;

void setup(){
  size(1000,1000);
  background(100);
}

void draw(){
  background(0);
  // Normalizza il valore di mouseX dal range 0-width a 20-250
  r = map(mouseX, 0, width, 20, 250);
  fill(255,0,0);
  ellipse(width/2, height/2, r, r);
}
