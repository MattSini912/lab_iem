int x=20;

void setup(){
  size(700,700);
  println(CODED);
}
void draw(){
  background(0);
  rect(x,height/2,50,50);
}

void keyPressed(){
  if(key==CODED)   // controlla se il tasto premuto è codificato
  {
    if(keyCode==LEFT)
    {
      println(LEFT);
      x-=5;    
    }
    else if(keyCode==RIGHT)
    {
      println(RIGHT);
      x+=5;
    }
  
  }
}
