Auto A;
AutoElettrica B;

void setup(){
    size(512,512);
    A = new Auto();
    B = new AutoElettrica(2 * A.v);
}

void draw(){
    background(255);
    A.run();
    B.run();
}

void keyPressed(){
    if(key == 'r' || key == 'R')
        setup();
}