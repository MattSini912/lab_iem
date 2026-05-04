float y = 0;
float x;
float speed = 2;
float gravity = 0.1;
float bounce = 0.75;
float r = 50;

void setup(){
  size(800,800);
  x = width/2;
}

void draw(){
  
  background(255);
  fill(255,0,0);
  stroke(0,0,255);
  
  ellipse(x,y,r,r);
  y = y + speed;
  speed = speed + gravity;
  
  if(y > height - r/2){
    speed = -(bounce) * speed;
    y = height - r/2;           // Importante! Serve per non bloccarsi
    if(abs(speed) < 0.6)
      speed = 0.0;
  }
}
