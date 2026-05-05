ArrayList<Voto> A;

void setup(){
    size(512,512);
    A = new ArrayList<Voto>();
}

void draw(){
    background(0);
    for(int i = 0; i < A.size(); i++)
        A.get(i).run();
}

void mousePressed() {
    if (mouseButton == LEFT) {
        A.add(new Voto());
    } 
    if (mouseButton == RIGHT) {
        A.add(new Votone());
    }
}

void keyPressed(){
    if(key == 'r' || key == 'R')
        A.clear();
}