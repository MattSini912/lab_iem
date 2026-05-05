int KS = 120;
PImage I;

PImage gray_mean(PImage I){
    PImage R = I.copy();
    R.loadPixels();
    for(int i = 0; i < R.pixels.length; i++){
        color c = R.pixels[i];
        c = int((red(c) + green(c) + blue(c)) / 3);
        R.pixels[i] = color(c, c, c);
    }
    return R;
}

void setup(){
    size(512,512);
    I = loadImage("lenna.png");
    I.resize(512,512);
}

void draw(){
    image(I, 0, 0);

    int w_x = mouseX - int(KS/2);
    int w_w = KS;
    if(w_x < 0){
        w_w = KS + w_x;
        w_x = 0;
    }
    if(w_x + w_w > width)
        w_w = width - w_x;
    int w_y = mouseY - int(KS/2);
    int w_h = KS;
    if(w_y < 0){
        w_h = KS + w_y;
        w_y = 0;
    }
    if(w_y + w_h > height)
        w_h = height - w_y;
    PImage W = I.get(w_x, w_y, w_w, w_h);
    W = gray_mean(W);
    image(W, w_x, w_y);

    if (mousePressed && (mouseButton == LEFT)) {
        I = get(0,0,width,height);
    }

    rectMode(CENTER);
    strokeWeight(5);
    stroke(255,255,0,128);
    noFill();
    rect(mouseX, mouseY, KS, KS);

}

void keyPressed(){
    if(key == '+' && KS < 200){
        KS += 5;
        println(KS);
    }
    if(key == '-' && KS > 40){
        KS -= 5;
        println(KS);
    }
    if(key == 'r' || key == 'R'){
        setup();
    }
}