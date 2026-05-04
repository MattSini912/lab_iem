ArrayList<Ball> ab;

void setup(){
  size(1000,750);
  ab = new ArrayList<Ball>();
}

void draw(){
  //background(0);
  fill(0,60);
  noStroke();
  rect(0,0,width,height);
  for(Ball b : ab)
    b.run();
}


void keyPressed(){
  
  if(key == 'n' || key == 'N'){
    ab.add(new Ball(
     random(35,width-35),
     random(35,height-35),
     random(30,70),
     random(-10,10),
     random(-10,10)
    ));
  }
  
  if(key == 'g' || key == 'G'){
    ab.add(new GreenBall(
     random(35,width-35),
     random(35,height-35),
     random(30,70),
     random(-10,10),
     random(-10,10)
    ));
  }

  switch(key)
  {
    case 'p':
    {
      noLoop();
      break;
    }
    case 'r':
    { 
      loop();
      break;
    }
    case 'c':
    { 
      ab.clear();
      break;
    }
  }
  
}
