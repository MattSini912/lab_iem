size(1050, 500);

int radius = 30;
int diameter = radius*2;

noFill();

for(int center = radius; center < width; center += radius){
  if(diameter < width){
    ellipse(center, height/2, diameter, diameter);
  }
  diameter += radius*2;
}
