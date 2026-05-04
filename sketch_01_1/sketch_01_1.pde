size(500, 500);            // Impostiamo la dimensione del canvas (x,y)
background(50, 50, 127);     // Impostiamo il colore dello sfondo in valori (r,g,b) oppure grayscale, dove (0) = nero e (255) = bianco

// Gli elementi vengono mostrati in livelli in base all'ordine in cui sono dichiarati
point(10, 10);              // Disegna un punto nella posizione (x,y)
ellipse(200, 200, 50, 50);  // Disegna un ellisse (x_centro, y_centro, x_size, y_size)

stroke(255, 0, 0);           // Definisce un colore da usare per le linee da qui in poi
line(30, 30, 300, 300);      // Disegna un linea dal punto (x1,y1) al punto (x2,y2): (x1,y1,x2,y2)
line(width/2, 0, 0, height/2);   // Usiamo la dimensione della finestra come parametro

noStroke();                  // Non usare un colore per le linee
fill(0, 255, 0);             // Imposta il colore di riempimento
ellipse(300, 300, 50, 50);
