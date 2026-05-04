float speed = random(-5, 5);
int w = 60;
Monitor M1;
Monitor M2;

  
void setup(){
  size(512,512);
  if(speed == 0)
    speed = 5;
  M1 = new Monitor(10, 10, speed, w, w*9/16);
  M2 = new OldMonitor(width-10-w*3/4, height-10-w*3/4, -speed, w, w*3/4);
}

void draw(){
  background(255);
  M1.run();
  M2.run();
}
