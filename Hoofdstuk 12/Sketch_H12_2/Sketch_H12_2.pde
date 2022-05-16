int spatiesAantal = 0;
int seconden;
boolean spaties = true;
int secondsleft;
boolean stop = false;


void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  secondsleft = 10 - seconden;
  if(seconden >= 10){
    spaties = false;
   
  }

  fill(0,0,0);
  text("Aantal Spaties: " + spatiesAantal, 200, 200);
  text("Seconds left: " + secondsleft, 200, 220);
}

void keyReleased(){
  if(keyCode == 32 && spaties){
    spatiesAantal++;
  }
}
