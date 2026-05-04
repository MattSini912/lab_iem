PImage im;
PImage sub;

void setup(){
  size(600,600);
  im = loadImage("lenna.png"); // si possono mettere anche url
  println("Width: " + im.width);
  println("Height: " + im.height); 
}

void draw(){
  background(0); 
  image(im,40,40);
}

void mousePressed(){
  im.resize(im.width/2, im.height/2);
}

void keyTyped(){
  if(key == 's' || key == 'S'){
    println(savePath("lenna_small_" + im.width + "_" + im.height + ".png"));
    im.save("data/lenna_small_" + im.width + "_" + im.height + ".png");
  }
  if(key == 'c' || key == 'C'){
    println(savePath("canvas_" + width + "_" + height + ".png"));
    saveFrame("data/canvas_" + width + "_" + height + ".png");
  }
  if(key == 'r' || key == 'r'){
     sub = im.get(150,150,300,300);
     im = sub;
     im.resize(width,height);
  }
}
