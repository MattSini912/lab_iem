float [] r = new float[5];

void setup(){
  size(800,800);
  for(int i=0; i<r.length; i++)
  {
    r[i]=i*100;
  }
}

void draw(){
  for(int i=r.length-1; i>=0; i--)
  {
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(width/2,height/2,r[i],r[i]);
  }
  
  if(mouseButton==LEFT)
  noLoop(); // si ferma il draw()
  
  if(mouseButton==RIGHT)
  loop();   // non fa niente, perché il ciclo si ferma
}

/*
void mousePressed(){
  noLoop();
}

void mouseReleased(){
  loop();
}

*/
void keyPressed(){
  loop();  // così anche se è fuori dal ciclo riprende
}
/*
void keyReleased(){
  loop();
}
*/
