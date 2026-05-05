class MegaSmile extends Smile{

    MegaSmile(){
        super();
        this.d = -1;
        this.c = color(255);
    }

    void move(){
        this.x += this.v * this.d;
        if(this.x <= -this.r){
            this.x = width + this.r;
        }
    }

    void run(){
        this.move();
        pushMatrix();
        int temp_x = this.x, temp_y = this.y;
        this.x = 0;
        this.y = 0;
        translate(temp_x,temp_y);
        scale(1.5);
        super.display();
        this.x = temp_x;
        this.y = temp_y;
        popMatrix();
    }
    
}