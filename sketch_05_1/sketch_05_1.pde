float rotAngle = 10;

void setup(){
  size(600,600);
}

void draw(){
  
  fill(255,50);
  rect(0,0,width,height);
  
  translate(width/2,height/2);
  rotate(radians(rotAngle));
  
  noStroke();
  fill(255,0,0);
  ellipse(250,0,20,20);
  
  rotAngle += 20;
  
}
