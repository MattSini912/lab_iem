PImage Im, ImN, ImG, ImL;

void setup(){
  size(1536,1024);
}

void draw(){
  
  Im = loadImage("lenna.png");
  image(Im,0,0);
   
  ImN = negativo(Im);
  image(ImN,512,0);
  
  Im.filter(GRAY);
  image(Im,1024,0);
  
  ImG = gamma(Im, 1.5);
  image(ImG,0,512);
  
  ImL = logaritmo(Im);
  image(ImL,512,512);

  Im.filter(THRESHOLD);
  image(Im,1024,512);
  
}

PImage negativo(PImage Im){
  PImage R = Im.copy();
  R.loadPixels();
  float r,g,b;
  for(int i = 0; i < R.pixels.length; i++){
    r = 255 - red(R.pixels[i]);
    g = 255 - green(R.pixels[i]);
    b = 255 - blue(R.pixels[i]);
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}

PImage gamma(PImage Im, float gm){
  PImage R = Im.copy();
  R.loadPixels();
  float r,g,b;
  float C = 1/pow(255,gm-1);
  for(int i = 0; i < R.pixels.length; i++){
    r = C * pow(red(R.pixels[i]), gm);
    g = C * pow(green(R.pixels[i]), gm);
    b = C * pow(blue(R.pixels[i]), gm);
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}

PImage logaritmo(PImage Im){
  PImage R = Im.copy();
  R.loadPixels();
  float r,g,b;
  float C = 255/log(256);
  for(int i = 0; i < R.pixels.length; i++){
    r = C * log(1 + red(R.pixels[i]));
    g = C * log(1 + green(R.pixels[i]));
    b = C * log(1 + blue(R.pixels[i]));
    R.pixels[i] = color(r,g,b);
  }
  R.updatePixels();
  return R;
}
