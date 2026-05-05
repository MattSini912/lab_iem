class Smile{

    int x, y, r, d;
    float v;
    color c;
    
    Smile(){
        this.r = 25;
        this.x = int(random(this.r,width-this.r));
        this.y = int(random(this.r,height-this.r));
        this.v = random(2,10);
        this.d = 1;
        this.c = color(255,255,0);
    }

    void move(){
        this.x += this.v * this.d;
        if(this.x >= width - this.r){
            this.d = -this.d;
            this.x = width - this.r;
        }
        else if(this.x <= this.r){
            this.d = -this.d;
            this.x = this.r;
        }
    }

    void display(){
        noFill();
        strokeWeight(5);
        stroke(this.c);
        ellipseMode(RADIUS);
        ellipse(this.x, this.y, this.r, this.r);
        line(this.x-10,this.y-15,this.x-10,this.y);
        line(this.x+10,this.y-15,this.x+10,this.y);
        line(this.x-10,this.y+15,this.x+10,this.y+15);
    }

    void run(){
        move();
        display();
    }

}
