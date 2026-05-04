PImage I;
color c,c1;
int ar;

void setup(){
  I = loadImage("lenna.png");
  size(512,512);
  ar = 0;
}

void draw(){
  image(I,0,0); 
}

void keyPressed(){
  if(key == '-')
    ar--;
  if(key == '+')
    ar++;
    
  // si ottiene una matrice linearizzata, tutti i pixel sono in un array
  // bisogna usarlo quando si lavora con gli operatori puntuali
  I.loadPixels();
  for(int i = 0; i < I.pixels.length; i++){
    c1 = I.pixels[i];
    c = color(red(c1)+ar, green(c1), blue(c1));  // facendo così i pixel rossi prima o poi si saturano e assumono lo stesso valore
    I.pixels[i] = c;
  }
  I.updatePixels(); // forza l'aggiornamento dell'immagine 
 
}
