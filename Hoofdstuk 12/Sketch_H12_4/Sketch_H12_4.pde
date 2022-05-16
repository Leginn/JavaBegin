int seconden;
int secondsleft;
boolean start = false;


void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  
    if(start){
    secondsleft = 0 + seconden;
  }  
  

  fill(0,0,0);
  text("Seconds: " + secondsleft, 200, 200);
}

void keyReleased(){
  if(keyCode == 38){
    start = true;
  }
  if(keyCode == 40){
  start = false;
  }
  
}
