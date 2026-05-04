int a = 0;

void setup(){
  size(500,500); 
  frameRate(120);
}

void draw(){
  background(0);
  noStroke();
  fill(255);
    
// Cambiamo il punto di riferimento da (0,0) al centro (come piano cartesiano), cosi
//  l'oggetto gira su se stesso, altrimenti gira intorno all'origine in alto a sx
  translate(width/2, width/2); 
  
  rotate(radians(a));
  rectMode(CENTER);
  
// Impostiamo il centro a (0,0) in modo da coincidere con la nuova
//  origine al centro della canvas
  rect(0, 0, 50, 50);
  
  stroke(255,0,0);
  line(-25, 35, 25, 35);
  a++;
}
