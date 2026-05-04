//EFFETTO SCIA
float x,y;
void setup(){
  size(700,700);
  noStroke();
  //frameRate(5);
}
void draw(){
  //background(0);
  fill(0,25);
  rect(0,0,width,height);
  x=lerp(x,mouseX,0.1);
  y=lerp(y,mouseY,0.1);
  fill(255);
  ellipse(x,y,60,60);

}
