class GreenBall extends Ball{
  
  GreenBall(float x, float y, float s, float sx, float sy){
    super(x,y,s,sx,sy);
  }
  
  GreenBall(float x, float y, float s){
    super(x,y,s,0,0);
  }

  void bounce(){
    if(posY < size/2 || posY > height - size/2){
      sy *= -1;
      if(posY > height - size/2)
        posY = height - size/2;
    }
    if(posX < size/2){
      if(posX > -size/2){
        GreenBall nb = new GreenBall(width + posX, posY, size);
        nb.display();
      }
      else
        posX = width + posX;
    }
    else if(posX > width - size/2){
      if(posX < width + size/2){
        GreenBall nb = new GreenBall(posX - width, posY, size);
        nb.display();
      }
      else
        posX = posX - width;
    }
  }

  void display(){
    fill(0,255,0);
    strokeWeight(5);
    stroke(255,0,255);
    ellipse(posX,posY,size,size);
  }
  
}
