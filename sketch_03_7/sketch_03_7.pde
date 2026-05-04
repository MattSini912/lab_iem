int w=10;
void setup(){
  size(800,500);
  stroke(255,0,0);
  strokeWeight(w);
  background(255);
}
void draw(){
  
  if(mousePressed)
  {
    //point(mouseX,mouseY); 
    line(pmouseX,pmouseY,mouseX,mouseY);
    // pmouse è la posizione del mouse nel frame precedente
    // serve a creare effetti continui
    
  }
 
}


void keyPressed()
{
  if((key=='g') || (key=='G'))
  stroke(0,255,0);
  if((key=='r') || (key=='R'))
  stroke(255,0,0);
  if((key=='b') || (key=='B'))
  stroke(0,0,255);
  if((key=='q') || (key=='Q'))
  stroke(random(255),random(255),random(255));
  if((key=='w') || (key=='W'))
  {
    strokeWeight(w*3);
    stroke(255);
  }
  else
  strokeWeight(w);
  
  
}
