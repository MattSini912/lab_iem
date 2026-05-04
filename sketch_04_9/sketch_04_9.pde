int d = 40;
int dist = 80;

void setup(){
  size(500,500);
}

void draw(){
  
  background(0);
  translate(width/2, height/2);
  fill(255);
  noStroke();
  
  // Una rivoluzione ogni 10 secondi
  float r = millis() * 0.001 * TWO_PI;
  rotate(r/10);
  
  stroke(0,0,255);
  line(0,0,400,0);
  noStroke();
 
  // una rotazione al secondo
  translate(dist, 0);
  rotate(r);
  ellipse(0, 0, d, d);
  
  /* OPPURE:
  rotate(r);
  ellipse(dist, 0, d, d);
  */
  
  strokeWeight(5);
  stroke(255,0,0);
  line(0,0,d/2,0);

}
