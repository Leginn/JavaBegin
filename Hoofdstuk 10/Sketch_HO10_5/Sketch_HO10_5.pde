import controlP5.*;

float cijfer11;
float cijfer22;
float antwoord;

ControlP5 cp;
ControlP5 cp1;

Button knop1;
Button knop2;
Button knop3;
Button knop4;

Textfield tekstveld1;
Textfield tekstveld2;

void setup(){
  size(800,800);
  
  background(255,255,255);
  
  cp = new ControlP5(this);
  cp1 = new ControlP5(this);
  
  tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setSize(100,50)
                .setText("4")
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(255,0,0))
                .setColorForeground(color(0,0,0))
                .setColorBackground(color(0,0,0))
                .setColorActive(color(255,0,0));

  tekstveld2 = cp1
                .addTextfield("TextInput1")
                .setPosition(300,100)
                .setSize(100,50)
                .setText("4")
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(255,0,0));
                
  knop1 = cp.addButton("knop1")
          .setPosition(450,100)
          .setSize(50,50)
          .setCaptionLabel("*");
          
  knop2 = cp.addButton("knop2")
          .setPosition(500,100)
          .setSize(50,50)
          .setCaptionLabel("/");
          
  knop3 = cp.addButton("knop3")
          .setPosition(550,100)
          .setSize(50,50)
          .setCaptionLabel("+");
  knop4 = cp.addButton("knop4")
          .setPosition(600,100)
          .setSize(50,50)
          .setCaptionLabel("-");
}


void draw(){

}

void knop1(){
  String cijfer1 = tekstveld1.getText();
  
  cijfer11 = Integer.valueOf(cijfer1);
  
  String cijfer2 = tekstveld2.getText();
  
  cijfer22 = Integer.valueOf(cijfer2);
  
  antwoord = cijfer11 * cijfer22;
  println(antwoord);
  textSize(50);
  fill(0,0,0);
  text("Het antwoord is: " + antwoord, 60, 200);
}

void knop2(){
  String cijfer1 = tekstveld1.getText();
  
  cijfer11 = Integer.valueOf(cijfer1);
  
  String cijfer2 = tekstveld2.getText();
  
  cijfer22 = Integer.valueOf(cijfer2);
  
  antwoord = cijfer11 / cijfer22;
  textSize(50);
  fill(0,0,0);
  println(antwoord);
  text("Het antwoord is: " + antwoord, 60, 200);
}

void knop3(){
  String cijfer1 = tekstveld1.getText();
  
  cijfer11 = Integer.valueOf(cijfer1);
  
  String cijfer2 = tekstveld2.getText();
  
  cijfer22 = Integer.valueOf(cijfer2);
  
  antwoord = cijfer11 + cijfer22;
  textSize(50);
  fill(0,0,0);
  println(antwoord);
  text("Het antwoord is: " + antwoord, 60, 200);
}

void knop4(){
  String cijfer1 = tekstveld1.getText();
  
  cijfer11 = Integer.valueOf(cijfer1);
  
  String cijfer2 = tekstveld2.getText();
  
  cijfer22 = Integer.valueOf(cijfer2);
  
  antwoord = cijfer11 - cijfer22;
  textSize(50);
  fill(0,0,0);
  println(antwoord);
  text("Het antwoord is: " + antwoord, 60, 200);
}
