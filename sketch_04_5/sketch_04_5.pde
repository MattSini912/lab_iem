size(500, 500);
textSize(70);

PFont Times, Arial, Loaded;
Arial = createFont("Ubuntu", 70);       // UBUNTU: We already have Arial and TimesNewRoman at home
Times = createFont("URW Gothic", 120);
Loaded = loadFont("Z003-MediumItalic-48.vlw"); // Creato con  Tools -> Create Font  e salvato in /data 

textFont(Arial);
text("Ababacab", 10, 70);

textFont(Times);
fill(0, 100, 150);
text("Sono Porci Questi Romani", 10, 150);

textFont(Loaded);
fill(0);
text("No, non nasconderti nel nostro nord", 10, 210, width, height); // inserisce il testo in una "box"
