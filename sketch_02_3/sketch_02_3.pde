void setup(){
  size(1000, 1000);
  background(255);
  fill(255, 255, 0);
  
  // x, y, x_size, y_size, start_rad (<) end_rad (in senso orario)
  arc(100, height/2, 100, 100, radians(30), radians(330));        
  
  arc(200, height/2, 100, 100, PI + HALF_PI, TWO_PI);  // 0-90
  arc(300, height/2, 100, 100, HALF_PI, TWO_PI); // 0-270
  arc(400, height/2, 100, 100, PI, HALF_PI); // errore
  arc(500, height/2, 100, 100, PI, TWO_PI); // 0-180 
  arc(600, height/2, 100, 100, QUARTER_PI, HALF_PI); // 270-315 
 
}



void draw(){
  
}
