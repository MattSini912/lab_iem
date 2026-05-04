// Viene eseguita una volta all'inizio del programma
// Serve a impostare i parametri d'ambiente
void setup(){
  size(100, 100);
  println("Setup");
  frameRate(30);
}

// Viene eseguita ripetutamente (di base) 60 volte al secondo
// il framerate può essere cambiato con la funzione omonima
// è importante per le animazioni
void draw(){
  println("Frame: " + frameCount);
//if(frameCount == 150)                     // Meglio == di >= perché sennò disegna la figura ogni frame
//  ellipse(width/2, height/2, 50, 50);     //  tuttavia possono esserci problemi di frame skipping
  if(millis() > 5000 && millis() < 5500)    // Permette di lavorare col tempo invece dei frame
    ellipse(width/2, height/2, 50, 50);     //  selezionando un intervallo di tempo si evita frame skipping
}
