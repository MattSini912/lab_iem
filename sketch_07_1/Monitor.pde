class Monitor{
  
  int w, h, ol = 5;
  color col_in, col_ol;
  float pos_x, pos_y, vel;
  
  Monitor(float x, float y, float v, int w, int h){
    this.pos_x = x;
    this.pos_y = y;
    this.vel = v;
    this.w = w;
    this.h = h;
    this.col_in = color(random(256), random(256), random(256));
    this.col_ol = color(random(256), random(256), random(256));
  }
  
  Monitor(float x, float y, float v, int w, int h, color col_in, color col_ol){
    this(x, y, v, w, h);
    this.col_in = col_in;
    this.col_ol = col_ol;
  }
  
  void sketch(){
    strokeWeight(5);
    stroke(this.col_ol);
    fill(this.col_in);
    rectMode(CORNER);
    rect(int(this.pos_x), int(this.pos_y), this.w, this.h);
  }
  
  // TODO
  void run(){
    pos_x = (pos_x + vel) % width;
    if(pos_x + w < 0){
      pos_x = width - w;
    }
    this.sketch();
  }
  
}
