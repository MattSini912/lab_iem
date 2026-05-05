ArrayList<Smile> A;

void setup(){
    size(500,500);
    A = new ArrayList<Smile>();
}

void draw(){ 
    background(0);
    for (int i = 0; i < A.size(); i++) {
        A.get(i).run();
    }

}

void keyPressed(){
    if(key == 'r' || key == 'R'){
        A.clear();
    }
}

void mousePressed() {
    if (mouseButton == LEFT) {
        A.add(new Smile());
    } 
    else if (mouseButton == RIGHT) {
        A.add(new MegaSmile());
    }
}