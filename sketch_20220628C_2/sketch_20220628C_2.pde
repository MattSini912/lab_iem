PImage wow(PImage I){
    PImage R = I.copy();
    R.loadPixels();
    int share = int(R.height*random(0,1));
    for(int x = 0; x < R.width/2; x++){
        for(int y = 0; y < R.height; y++){

            color c = R.pixels[x+R.width/2 + y*R.width];
            if(y <= share)
                R.pixels[x+R.width/2 + y*R.width] = color(255-red(c),255-green(c),255-blue(c));
            else
                R.pixels[x+R.width/2 + y*R.width] = color(red(c),green(c),0);

            R.pixels[x + y*R.width] = R.pixels[x+R.width/2 + y*R.width];
        }
    }
    R.updatePixels();
    return R;
}

void setup(){
    size(512,256);
    PImage L = loadImage("lenna.png");
    L.resize(256,256);
    PImage W = wow(L);
    image(L,0,0);
    image(W,256,0);
}

void draw(){

}

void keyPressed(){
    if(key == 'r' || key == 'R'){
        setup();
    }
}