
void setup(){
size(500,500);
}

void draw(){
  background(255,255,255);
  circeldraw(150);
}

void circeldraw(int circel){
  for(int i = 0; i < 5; i++){
    ellipse(200 - circel/2,200,circel,circel);
    circel -= 20;
  }
}
