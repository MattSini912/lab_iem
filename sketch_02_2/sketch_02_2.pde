int diametro = 100;

void setup(){
  size(1000, 1000);
  background(255);
  colorMode(RGB, width);    // Distribuisce la componente di colore lungo la larghezza della finestra per ottenere un gradiente
}

void draw(){
  for(int y = diametro/2; y < height; y += diametro){
    for(int x = diametro/2; x < width; x += diametro){
      if(dist(x, y, mouseX, mouseY) < diametro/2)        // Ci danno le coordinate del mouse
        fill(0, 0, width);    // Usiamo width per avere la componente massima di blu, visto che usiamo colorMode
      else
        fill(x, y, 0);        // Il gradiente di colore si distribuisce linearmente lungo la larghezza e l'altezza della finestra
      ellipse(x, y, diametro, diametro);   
    }
  }
}
