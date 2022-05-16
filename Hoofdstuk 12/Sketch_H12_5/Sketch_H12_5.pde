int y1 = 400;
int x1 = 400;
int y2 = 300;
int x2 = 300;
boolean test;

void setup(){
size(800,800);

y1 = mouseY;

}

void draw(){
background(255,255,255);
fill(0,0,0);
line(x1, y1, x2, y2);
}

void mousePressed(){
  if(mousePressed && mouseButton == LEFT){
    x1 = mouseX;
    y1 = mouseY;
    test = true;
    println("test");
  }
  if(mousePressed && mouseButton == RIGHT){
      x2 = mouseX;
      y2 = mouseY;
      test = false;
    }
  }
