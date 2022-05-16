

void setup(){
  size(1000,1000);
  background(0,0,0);
  noStroke();
}

void draw(){

}

void mouseMoved(){
  int r = floor(random(256));
  int g = floor(random(256));
  int b = floor(random(256));
  fill(r,g,b);
  rect(mouseX,mouseY,30,30);
}
