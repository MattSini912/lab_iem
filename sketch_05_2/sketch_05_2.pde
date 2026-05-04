float scale = 0.2;
int dir_scale = 1;

void setup(){
  size(500,500);
  background(255);
  fill(0,255,0);
  stroke(255,0,0);
  strokeWeight(5);
  rectMode(CENTER);
  frameRate(2);
}

void draw(){
  background(255);
  
  translate(width/2,height/2);
  scale(scale); // width,height = 500x500 --- *0.2 --> 100x100
  rect(0,0,width,height);
  
  scale += dir_scale * 0.1;
  if(scale >= 1 || scale <= 0.2)
    dir_scale *= -1;
}
