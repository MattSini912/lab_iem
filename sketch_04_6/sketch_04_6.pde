PFont f;
String typing = "";
String saved = "";

void setup(){
  size(1000, 1000);
  textSize(200);
  f = createFont("URW Gothic", 30);
  textFont(f);
  fill(0);
}

void draw(){
 background(255);
 text("Clicca sulla canvas e scrivi! Premi INVIO per salvare!", 25, 25);
 text("Input: " + typing, 25, 200);
 text("Saved: " + saved, 25, 250);
}

void keyPressed(){
  if(key == '\n'){
    saved = typing; 
    typing = "";
  }
  else if(key == BACKSPACE){
    if(typing.length() > 0)
      typing = typing.substring(0, typing.length() - 1);
  }
  else{
    typing = typing + key; 
  }
}
