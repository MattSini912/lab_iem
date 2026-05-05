class Auto{

    float x, y;
    int w = int(random(60, 200)), h = int(this.w / 3.0), t = int(w / 10);
    float v;
    color c;

    Auto(){
        this.x = width / 4.0;
        this.y = height / 3.0;
        this.c = color(255,0,0);
        this.v = random(2,4);
    }

    Auto(float v_in){
        this();
        this.v = v_in;
    }

    boolean move(){
        this.x += this.v;
        if(this.x > width + w/2){
            this.x = - w/2;
            return true;
        }
        return false;
    }

    void display(){
        
        noStroke();
        
        rectMode(CENTER);
        fill(this.c);
        rect(int(this.x), int(this.y), this.w, this.h);

        ellipseMode(RADIUS);
        fill(0);
        ellipse(int(this.x - (this.w / 6.0)), int(this.y + this.h / 2.0), this.t, this.t);
        ellipse(int(this.x + (this.w / 6.0)), int(this.y + this.h / 2.0), this.t, this.t);
    }

    void run(){
        this.move();
        this.display();
    }

}