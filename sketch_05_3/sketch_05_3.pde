float shX = 0.1;
float shY = 0.1;

void setup(){
  size(500,500);
  background(255); 
  fill(0,255,0);
  stroke(255,0,0);
  strokeWeight(5);
  rectMode(CENTER);
  frameRate(30);
}

// lo shear è l'angolo che si forma tra
// due angoli opposti, quindi poi ruota

void draw(){
 background(255);
 translate(width/2,height/2);
 shearX(shX);
 //shearY(shY);
 rect(0,0,150,150);
 line(0,0,75,0);
 line(0,0,0,-75);
 shX += 0.01;
 shY += 0.01;
 println(shX, shY);
}
