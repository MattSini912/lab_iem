int pos = 0;

void setup(){
  size(500, 500);
}

void draw(){
 background(255);
 line(pos % width, 20, pos % width, height - 20);
 pos += 3;
}
