int x;
int y;
int x1;
int y1;

void setup(){
size(800,800);

x = 40;
y = 40;

}

void draw(){
  background(0,0,0);
  rect(x,y,40,40);
}

void keyPressed(){
    if(keyCode == 39){
    x += 10;
    background(0,0,0);
  }
    if(keyCode == 40){
    y += 10;
    background(0,0,0);
  }
    if(keyCode == 38){
    y -= 10;
    background(0,0,0);
  }
    if(keyCode == 37){
    x -= 10;
    background(0,0,0);
  }
}
