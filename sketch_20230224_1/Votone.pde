class Votone extends Voto{

    Votone(){
        super();
        this.v = 0.0;
        this.c = color(255);
    }

    void display(){
        super.display();
        if(this.val > 24){
            fill(c);
            textSize(this.size - 2);
            text("LODE", int(this.x + 1), int(this.y + this.size), 4 * this.size, this.size);
        }
    }

}