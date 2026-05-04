size(1050, 500);
background(255, 0, 0);
strokeWeight(50);
int line_w = 150;

for(int x = 0; (x + line_w) <= width; x += 50){
  stroke(x*255/width);
  line(x, 0, x + line_w, height / 2);
  line(x, height, x + line_w, height / 2);
  noStroke();
}
