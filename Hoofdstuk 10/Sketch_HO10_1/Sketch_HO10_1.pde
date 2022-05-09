import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  ControlP5 cp = new ControlP5(this);
  size(1000,500);
  
knop1 = cp.addButton("knop1")
        .setPosition(200,200)
        .setSize(100,100)
        .setCaptionLabel("klik mij");

knop2 = cp.addButton("knop2")
        .setPosition(400,200)
        .setSize(100,100)
        .setCaptionLabel("klik mij");
  
}

void draw(){

}

void knop1(){
  println("Goed gedaan!");
}

void knop2(){
  println("Helaas fout!");
}
