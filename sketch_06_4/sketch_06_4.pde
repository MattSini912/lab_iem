PImage I;
color c;

void setup(){
  I = loadImage("lenna.png");
  size(512,512);
  c = color(255,255,0);
  
  I.loadPixels();
  for(int i = 0; i < I.width; i++)
    I.pixels[pos(i, i, I.width)] = c; 
  I.updatePixels();
  
  for(int i = 0; i < I.width; i++)
    I.set(I.width - i, i, c); 

}

void draw(){
  image(I,0,0); 
}

int pos(int x, int y, int w){
  return x + (y * w); 
}
