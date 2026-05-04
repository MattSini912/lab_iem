PImage Im, Iq;
int K;

void setup(){
 
  size(1024,512);
  K = 4;
  
  Im = loadImage("lenna.png");
  Im.filter(GRAY);
  image(Im,0,0);
  
  Iq = quantizza(Im,K);
  image(Iq,512,0);

}

void draw(){}

PImage quantizza(PImage I, int k){
  PImage R = I.copy();
  R.loadPixels();
  int q;
  for(int i = 0; i < I.pixels.length; i++){
    q = floor(blue(R.pixels[i]) * k / 256);
    q = int(float(q) / (k-1) * 255);
    R.pixels[i] = color(q);
  }
  R.updatePixels();
  return R;
}
