// Teorema di Bezier: tramite un punto di inizio e di fine e due di controllo,
// verso cui la linea si muove asintoticamente, si può creare qualunque curva

void setup(){
  size(1000, 1000); 
  noFill();
  background(125);
}


void draw(){
  
  background(125); // Pulisce il disegno a ogni ciclo
  
  textSize(40);
  text("A1", 385, 250);
  text("C1", mouseX, mouseY);
  text("C2", 215, 500);
  text("A2", 390, 500);
  
  stroke(255, 0, 0);
  line(385, 250, mouseX, mouseY); // A1-C1
  line(215, 500, 390, 500); // C2-A2
  
  stroke(0);
  // x_a1, y_a1, x_c1, y_c1, x_c2, y_c2, x_a2, y_a2
  bezier(385, 250, mouseX, mouseY, 215, 500, 390, 500);
  
}
