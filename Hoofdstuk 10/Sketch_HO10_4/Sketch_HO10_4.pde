import controlP5.*;

int kinderen = 35;
int ouders = 60;
int totaal;


ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;

void setup(){
  size(500,300);
  background(0,0,0);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("knop1")
          .setPosition(100,100)
          .setSize(100,100)
          .setCaptionLabel("Ouders");
  
  knop2 = cp.addButton("knop2")
          .setPosition(200,100)
          .setSize(100,100)
          .setCaptionLabel("Kinderen");
          
  knop3 = cp.addButton("knop3")
          .setPosition(300,100)
          .setSize(100,100)
          .setCaptionLabel("Totaal");
          
totaal = ouders + kinderen;
          
}


void draw(){

}

void knop1(){
  text("Het aantal ouders die komen: " + ouders, 40, 40);
}

void knop2(){
  text("Het aantal kinderen die komen: " + kinderen, 40, 50);
}

void knop3(){
  text("Het aantal kinderen die komen: " + totaal, 40, 60);
}
