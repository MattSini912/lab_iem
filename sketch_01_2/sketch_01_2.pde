size(700, 700);

noStroke();
fill(247, 158, 27);
ellipse(170, 75, 150, 150);

fill(235, 0, 27);
ellipse(75, 75, 150, 150);

fill(247, 158, 27, 150);       // Impostiamo anche il canale alfa (trasparenza)
ellipse(170, 75, 150, 150);

noFill();                      // Resetta il riempimento
stroke(0);
strokeWeight(10);              // Imposta lo spessore delle linee
rect(100, 300, 150, 150);      // Disegna un rettangolo, partendo dall'angolo in alto a sx
stroke(255,0,0);
ellipseMode(CORNER);           // Cambia il modo in cui si disegna l'ellise dal centro (CENTER) all'angolo (CORNER), esiste anche RADIUS. Vale anche per altre figure
ellipse(100, 300, 150, 150);
