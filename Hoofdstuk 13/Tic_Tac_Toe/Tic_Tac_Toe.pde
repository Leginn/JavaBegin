import controlP5.*;

int[] Vakjes = {0, 0, 0, 0, 0, 0, 0, 0, 0};

ControlP5 cp;
 
Button[] knop = new Button[9];
Button[] knop1 = new Button[9];
Button knop18;

void setup(){ 
  size(800,800);
  background(255,255,255);

  textSize(15);
  fill(0,0,0);
  text("Kruisje hier!", 100, 490);
  text("Rondje hier!", 350, 490);
  
  cp = new ControlP5(this);
  
   int tel  = 0;
     for(int i = 0; i < 3; i++){
       for(int j = 0; j < 3; j++){
         knop[tel] = cp.addButton("Knop"+tel)
            .setPosition(100 + i * 50, 500 + j * 50)
            .setSize(50,50)
            .setCaptionLabel("Kruisje");
        tel++;
       }
     }
       
    int tellie  = 0;
     for(int i = 0; i < 3; i++){
       for(int j = 0; j < 3; j++){
         knop[tellie] = cp.addButton("Knoop"+tellie)
            .setPosition(350 + i * 50, 500 + j * 50)
            .setSize(50,50)
            .setCaptionLabel("Rondje");
        tellie++;
       }
}

  knop18 = cp.addButton("Knop18")
            .setPosition(275,550)
            .setSize(50,50)
            .setCaptionLabel("Reset");
}

void draw(){
  
  noFill();
  rect(150,150,100,100);
  rect(250,150,100,100);
  rect(350,150,100,100);
  rect(150,250,100,100);
  rect(250,250,100,100);
  rect(350,250,100,100);
  rect(150,350,100,100);
  rect(250,350,100,100);
  rect(350,350,100,100);
  
fill(0,0,0);  
textSize(50);
   
if(Vakjes[0] == 1 && Vakjes[1] == 1 && Vakjes[2] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[3] == 1 && Vakjes[4] == 1 && Vakjes[5] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[6] == 1 && Vakjes[7] == 1 && Vakjes[8] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[0] == 1 && Vakjes[3] == 1 && Vakjes[6] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[1] == 1 && Vakjes[4] == 1 && Vakjes[7] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[2] == 1 && Vakjes[5] == 1 && Vakjes[8] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[0] == 1 && Vakjes[4] == 1 && Vakjes[8] == 1){
  text("Gefeliciteerd, Kruisje wint!", 50, 50); 
}else if(Vakjes[2] == 1 && Vakjes[4] == 1 && Vakjes[6] == 1){
  text("Gefeliciteerd, kruisje wint!", 50, 50); 
}else if(Vakjes[0] == 2 && Vakjes[1] == 2 && Vakjes[2] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[3] == 2 && Vakjes[4] == 2 && Vakjes[5] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[6] == 2 && Vakjes[7] == 2 && Vakjes[8] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[0] == 2 && Vakjes[3] == 2 && Vakjes[6] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[1] == 2 && Vakjes[4] == 2 && Vakjes[7] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[2] == 2 && Vakjes[5] == 2 && Vakjes[8] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[0] == 2 && Vakjes[4] == 2 && Vakjes[8] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
}else if(Vakjes[2] == 2 && Vakjes[4] == 2 && Vakjes[6] == 2){
  text("Gefeliciteerd, Rondje wint!", 50, 50); 
  }  
}

void Knop0(){
  
  if(Vakjes[0] == 0){
    line(150,150,250,250);
    line(150,250,250,150);
    Vakjes[0] = 1;
  }
}

void Knop1(){
  
  if(Vakjes[1] == 0){
    line(150,250,250,350);
    line(150,350,250,250); 
    Vakjes[1] = 1;
  }
}

void Knop2(){
  
  if(Vakjes[2] == 0){
    line(150,350,250,450);
    line(150,450,250,350); 
    Vakjes[2] = 1;
  }
}

void Knop3(){
  
  if(Vakjes[3] == 0){
    line(250,150,350,250);
    line(250,250,350,150);
    Vakjes[3] = 1;
  }
}

void Knop4(){

  if(Vakjes[4] == 0){
    line(250,250,350,350);
    line(250,350,350,250);  
    Vakjes[4] = 1;
  }
}

void Knop5(){
  
  if(Vakjes[5] == 0){
    line(250,350,350,450);
    line(250,450,350,350);
    Vakjes[5] = 1;
  }
}

void Knop6(){
  
  if(Vakjes[6] == 0){ 
    line(350,150,450,250);
    line(350,250,450,150);  
    Vakjes[6] = 1;
  }
}

void Knop7(){
  
  if(Vakjes[7] == 0){
    line(350,250,450,350);
    line(350,350,450,250);
    Vakjes[7] = 1;
  }
}

void Knop8(){
  
  if(Vakjes[8] == 0){
    line(350,350,450,450);
    line(350,450,450,350);
    Vakjes[8] = 1;
  }
}

void Knoop0(){
  
  if(Vakjes[0] == 0){
    circle(200, 200, 75);
    Vakjes[0] = 2;
  }
}

void Knoop1(){
  if(Vakjes[1] == 0){
    circle(200, 300, 75);
    Vakjes[1] = 2;
  }
}

void Knoop2(){
  if(Vakjes[2] == 0){
  circle(200, 400, 75);
    Vakjes[2] = 2;
  }
}

void Knoop3(){
  if(Vakjes[3] == 0){  
    circle(300, 200, 75);
    Vakjes[3] = 2;
  }
}

void Knoop4(){
  if(Vakjes[4] == 0){
    circle(300, 300, 75);
    Vakjes[4] = 2;
  }
}

void Knoop5(){
  if(Vakjes[5] == 0){
  circle(300, 400, 75);
    Vakjes[5] = 2;
  }
}

void Knoop6(){
  if(Vakjes[6] == 0){
  circle(400, 200, 75);
    Vakjes[6] = 2;
  }
}

void Knoop7(){
  if(Vakjes[7] == 0){
  circle(400, 300, 75);
    Vakjes[7] = 2;
  }
}

void Knoop8(){
  if(Vakjes[8] == 0){
  circle(400, 400, 75);
    Vakjes[8] = 2;
  }
}

void Knop18(){
  
Vakjes[0] = 0;  
Vakjes[1] = 0; 
Vakjes[2] = 0; 
Vakjes[3] = 0; 
Vakjes[4] = 0;
Vakjes[5] = 0; 
Vakjes[6] = 0; 
Vakjes[7] = 0; 
Vakjes[8] = 0; 

  background(255,255,255);
  textSize(15);
  text("Kruisje hier!", 100, 490);
  text("Rondje hier!", 350, 490);
  
}
