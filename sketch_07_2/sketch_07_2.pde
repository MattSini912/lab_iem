PImage Im, Is, Ic;

PImage sqr(PImage In){
  PImage I = In.copy();
  for(int i = 0; i < I.width/2; i++)
    for(int j = I.height/2; j < I.height; j++)
      I.set(i, j, color(255, 255, 0)); 
  return I;
}

PImage col(PImage In){
  PImage I = In.copy();
  for(int i = 0; i < width; i++){
    for(int j = 0; j < I.height; j++){
      color c = I.get(i, j); 
      if(i < I.width/2 && j >= I.height/2)
        c = color(255);
      else if(i > j)
        c = color(255, green(c), blue(c));
      else
        c = color(red(c), green(c), 255);
      I.set(i, j, c);
    }
  }
  return I;
}

void setup(){
 size(768, 256);
 Im = loadImage("lenna.png");
 Im.resize(256, 256);
 Is = sqr(Im);
 Ic = col(Im);
}

void draw(){
  image(Im, 0, 0);
  image(Is, 256, 0);
  image(Ic, 512, 0);
}
