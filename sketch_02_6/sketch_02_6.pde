int pos = 0;
int dir = 1;
int vel = 3;

void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  line(pos % width, 20, pos % width, height - 20);
  if(pos > width || pos < 0)
    dir = -dir;
  pos += dir * vel;
}
