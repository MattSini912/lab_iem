class Voto{

    float x, y, v;
    int val, d;
    int size;
    color c;

    Voto(){
        this.v = random(2,10);
        this.d = 1;
        this.val = int(random(100))%13 + 18;
        this.size = 30;
        this.c = color(255,255,0);
        this.x = random(0, width - this.size);
        this.y = random(0, height - this.size);
    }

    void move(){
        this.x += this.v * this.d;
        if(this.x > width - this.size){
            this.d *= -1;
            this.x = width - this.size;
        }
        if(this.x < 0){
            this.d *= -1;
            this.x = 0;
        }
    }

    void display(){
        noFill();
        stroke(c);
        rectMode(CORNER);
        rect(int(this.x), int(this.y), this.size, this.size);

        fill(c);
        textSize(this.size - 2);
        text(str(this.val), int(this.x + 1), int(this.y + 4), this.size, this.size);
    }

    void run(){
        this.move();
        this.display();
    }

}