void setup(){
  size(1000,1000); 
}

void draw(){
  float x = map(mouseX, 0, width, 350, 650);
  float y = map(mouseY, 0, height, 350, 650);
  ellipse(x,y,50,50);
}
