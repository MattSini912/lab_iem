PImage H;
color c;
int x,y;

void setup(){
  size(500,500); 
  H = loadImage("lenna.png");
  H.resize(200,200);
  c = color(0);
  x = width/2 - H.width/2;
  y = height/2 - H.height/2;
}

void draw(){
  background(c);
  c = H.get(mouseX - x, mouseY - y);
  println("(" + int(red(c)) + "," + int(green(c)) + "," + int(blue(c)) + ")");
  image(H,x,y);
}
