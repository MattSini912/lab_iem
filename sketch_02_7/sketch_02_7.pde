int l = 50;

void setup(){ 
  size(500, 500);
  background(0, 255, 0);
  noStroke();
  for(int y = 0; y < height; y += l){
    for(int x = 0; x < height; x += l){
      fill(random(255), 130);   // greyscale + alfa
      rect(x + random(-5, 5), y + random(-5, 5), l, l);
    } 
  }
}


void draw(){
  
}


void mousePressed(){
  setup();
}
