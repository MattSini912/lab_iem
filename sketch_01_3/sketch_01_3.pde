size(700, 700);
background(255);
noStroke();

// Definire i colori
color yellow = #ffff00;
color red = color(255, 0, 0);
color green = color(0, 255, 0);

fill(yellow);
ellipse(150, 150, 50, 50);

fill(green);
ellipse(250, 150, 50, 50);

fill(red);
ellipse(350, 150, 50, 50);

color pick = get(250, 150); // Prende il colore in un punto

fill(pick);
ellipse(450, 150, 50, 50);


stroke(0);
fill(255);
strokeWeight(35);

line(50, 300, 150, 450);

strokeCap(PROJECT);        // Imposta il come appare la linea
line(150, 300, 250, 450);

strokeCap(ROUND);
line(250, 300, 350, 450);

//----
//-----


rect(100, 500, 70, 70);

rect(250, 500, 70, 70);  
strokeJoin(BEVEL);         // Imposta come appare il bordo del rettangolo

rect(400, 500, 70, 70);
strokeJoin(ROUND);

rect(550, 500, 70, 70);
strokeJoin(MITER);
