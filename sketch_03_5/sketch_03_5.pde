//LERP
size(700,700);
strokeWeight(5);

int x1=10;
int y1=10;
int x2=300;
int y2=300;
line(x1,y1,x2,y2);

for(int i=1; i<10; i++)
{
  stroke(255,0,0);
  float perc=i/10.0;
  float x=lerp(x1,x2,perc);
  float y=lerp(y1,y2,perc);
  point(x,y);
}

/*
lerp(a, b, amt)
Calculates a number between two numbers at a specific increment. 
The amt parameter is the amount to interpolate between the two 
values where 0.0 equal to the first point, 0.1 is very near the 
first point, 0.5 is half-way in between, etc. The lerp function 
is convenient for creating motion along a straight path and for 
drawing dotted lines.
*/
