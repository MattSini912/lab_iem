class OldMonitor extends Monitor{
 
  OldMonitor(float x, float y, float v, int w, int h){
    super(x, y, v, w, h, color(0, 255, 0), color(127));
  }
  
  void run(){
    if(mouseX >= this.pos_x && mouseX <= this.pos_x + this.w && mouseY >= this.pos_y && mouseY <= this.pos_y + this.h){
      this.col_in = color(0);
      super.sketch();
      strokeWeight(3);
      stroke(255);
      line(pos_x + this.ol, pos_y + h/2, pos_x + w - this.ol, pos_y + h/2);
    }
    else{
      this.col_in = color(0, 255, 0);
      super.run();
    }
  }
  
}
