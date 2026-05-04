int l=50;

void setup(){
  size(500,500);
  
}

void draw(){
  
  if(mousePressed)
  {
    if(mouseButton==LEFT)
    {
      println("LEFT");
    }
    if(mouseButton==RIGHT)
    {
      println("RIGHT");
    }
    if(mouseButton==CENTER)
    {
      println("CENTER");
    }
  
  }
  
  if(keyPressed)
  {
    if(key=='a' || key=='A')
    println("Hai premuto a");
  
  }
  
  
}
void keyPressed()
{
  setup();
}

/*void mousePressed()
{
  setup();
}*/
