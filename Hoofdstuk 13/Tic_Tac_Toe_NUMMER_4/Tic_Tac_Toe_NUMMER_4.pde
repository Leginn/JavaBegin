import controlP5.*;

int[] Vakjes = {0, 0, 0, 0, 0, 0, 0, 0, 0};
int beurt = 1;
ControlP5 cp;

Button knop18;

void setup(){ 
  size(800,800);
  background(255,255,255);

  cp = new ControlP5(this);

  knop18 = cp.addButton("Knop18")
            .setPosition(275,475)
            .setSize(50,50)
            .setCaptionLabel("Reset");
}

void draw(){
  
  noFill();
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++){ 
      rect(i*100 + 150,j*100 + 150,100,100);   
    }
  }
  
fill(0,0,0);  
textSize(50);

int winner = 0;

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
  
  if(winner == 1){
     text("Gefeliciteerd, Kruisje wint!", 50, 50); 
  }else if(winner == 2){
     text("Gefeliciteerd, Rondje wint!", 50, 50); 
  }
}

void Knop18(){

beurt = 1;  
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
}

void mouseClicked(){
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++){
      if(mouseX > (i*100 + 150) && mouseY < (j*100 + 250) && mouseX < (i*100 + 250) && mouseY > (j*100 + 150) && Vakjes[i * 4 - i + j] == 0 && beurt == 1){
              line(i*100 + 150,j*100 + 150,i*100 + 250,j*100 + 250);
              line(i*100 + 150,j*100 + 250,i*100 + 250,j*100 + 150);        
              beurt = 2;
              Vakjes[i * 4 - i + j] = 1;
                
        }else if(mouseX > (i*100 + 150) && mouseY < (j*100 + 250) && mouseX < (i*100 + 250) && mouseY > (j*100 + 150) && Vakjes[i * 4 - i + j] == 0 && beurt == 2){
                circle(i*100 + 200, j*100 + 200, 75);       
                beurt = 1;
                Vakjes[i * 4 - i + j] = 2;  
      } 
    }
  }
}
