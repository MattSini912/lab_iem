void setup(){
 size(800,400); 
}

void draw(){
 background(200);
 for(int x = 40; x < width; x += 40){
    float noise = map(mouseX, 0, width, 0, width/10);
    float noise_a = random(-noise, noise);
    float noise_b = random(-noise, noise);
    line(x + noise_a, 100, x + noise_b, height - 100);
 }
}
