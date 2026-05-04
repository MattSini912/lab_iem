PImage I;
int g = 0;

void setup(){
  I = loadImage("lenna.png");
  size(512,512);
}

void draw(){
  image(I,0,0);
}

void keyTyped(){
  if(key == '+'){
    g++;
    I.filter(BLUR, g);
  }
  // non fa niente, non si puo inverire
  if(key == '-'){
    g++;
    I.filter(BLUR, g);
  }
  if(key == 'r'){
    g = 0;
    I = loadImage("lenna.png");
  }
}
