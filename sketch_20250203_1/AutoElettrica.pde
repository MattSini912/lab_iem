class AutoElettrica extends Auto{

    boolean blink;

    AutoElettrica(){
        this.blink = true;
        this.x = width / 4.0;
        this.y = height * 2.0/3.0;
        this.c = color(0,int(random(50,200)),0);
        this.v = random(2,4);
    }

    AutoElettrica(float v_in){
        this();
        this.v = v_in;
    }

    void display(){
        super.display();
        if(blink){
            strokeWeight(5);
            stroke(255,255,0);
            line(int(this.x - 15), int(this.y + 30*sqrt(3)/4), int(this.x + 15), int(this.y + 30*sqrt(3)/4));
            line(int(this.x - 15), int(this.y + 30*sqrt(3)/4), int(this.x), int(this.y - 30*sqrt(3)/4));
            line(int(this.x + 15), int(this.y + 30*sqrt(3)/4), int(this.x), int(this.y - 30*sqrt(3)/4));
        }
    }

    void run(){
        boolean test = super.move();
        this.display();
        if(test)
            blink = !blink;
    }


}