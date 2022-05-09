import controlP5.*;

float antwoord = 0;
int input1;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setSize(100,50)
                .setText("4")
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(255,0,0));
                
  knop1 = cp.addButton("knop1")
          .setPosition(400,400)
          .setSize(100,100)
          .setCaptionLabel("Bereken");
}


void draw(){

}

void knop1(){
  String input = tekstveld1.getText();
  
  input1 = Integer.valueOf(input);
  
  antwoord = input1 * 1.21;
  println("De prijs is (met 21% BTW): " + antwoord);
}
