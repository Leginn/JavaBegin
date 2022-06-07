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
}

void mouseClicked(){

  if(mouseX > 150 && mouseY < 250 && mouseX < 250 && mouseY > 150){
    if(Vakjes[0] == 0 && beurt == 1){
      line(150,150,250,250);
      line(150,250,250,150);
      beurt = 2;
      Vakjes[0] = 1;
      
     }else if(Vakjes[0] == 0 && beurt == 2){
      circle(200, 200, 75);
      beurt = 1;
      Vakjes[0] = 2;
     }
  } 
  
  if(mouseX > 250 && mouseY < 250 && mouseX < 350 && mouseY > 150){
    if(Vakjes[1] == 0 && beurt == 1){
      line(250,150,350,250);
      line(250,250,350,150);
      beurt = 2;
      Vakjes[1] = 1;
      
    }else if(Vakjes[1] == 0 && beurt == 2){
      circle(300, 200, 75); 
      beurt = 1;
      Vakjes[1] = 2;
    }
  } 
  
  if(mouseX > 350 && mouseY < 250 && mouseX < 450 && mouseY > 150){
    if(Vakjes[2] == 0 && beurt == 1){
      line(350,150,450,250);
      line(350,250,450,150);  
      beurt = 2;
      Vakjes[2] = 1;
      
    }else if(Vakjes[2] == 0 && beurt == 2){
      circle(400, 200, 75);
      beurt = 1;
      Vakjes[2] = 2;
    }
  } 
  
  if(mouseX > 150 && mouseY < 350 && mouseX < 250 && mouseY > 250){
    if(Vakjes[3] == 0 && beurt == 1){
      line(150,250,250,350);
      line(150,350,250,250);
      beurt = 2;
      Vakjes[3] = 1;
      
    }else if(Vakjes[3] == 0 && beurt == 2){
      circle(200, 300, 75); 
      beurt = 1;
      Vakjes[3] = 2;
    }
  } 
  
  if(mouseX > 250 && mouseY < 350 && mouseX < 350 && mouseY > 250){
    if(Vakjes[4] == 0 && beurt == 1){
      line(250,250,350,350);
      line(250,350,350,250);  
      beurt = 2;
      Vakjes[4] = 1;
      
    }else if(Vakjes[4] == 0 && beurt == 2){
      circle(300, 300, 75); 
      beurt = 1;
      Vakjes[4] = 2;
    }
  } 
  
  if(mouseX > 350 && mouseY < 350 && mouseX < 450 && mouseY > 250){
    if(Vakjes[5] == 0 && beurt == 1){
      line(350,250,450,350);
      line(350,350,450,250);
      beurt = 2;
      Vakjes[5] = 1;
      
    }else if(Vakjes[5] == 0 && beurt == 2){
      circle(400, 300, 75);
      beurt = 1;
      Vakjes[5] = 2;
    }
  } 
  
  if(mouseX > 150 && mouseY < 450 && mouseX < 250 && mouseY > 350){
    if(Vakjes[6] == 0 && beurt == 1){ 
      line(150,350,250,450);
      line(150,450,250,350);
      beurt = 2;
      Vakjes[6] = 1;
      
    }else if(Vakjes[6] == 0 && beurt == 2){
      circle(200, 400, 75);
      beurt = 1;
      Vakjes[6] = 2;
    }
  } 
  
  if(mouseX > 250 && mouseY < 450 && mouseX < 350 && mouseY > 350){
    if(Vakjes[7] == 0 && beurt == 1){
      line(250,350,350,450);
      line(250,450,350,350);
      beurt = 2;
      Vakjes[7] = 1;
      
    }else if(Vakjes[7] == 0 && beurt == 2){
      circle(300, 400, 75);
      beurt = 1;
      Vakjes[7] = 2;
    }
  } 
  
  if(mouseX > 350 && mouseY < 450 && mouseX < 450 && mouseY > 350){
    if(Vakjes[8] == 0 && beurt == 1){
      line(350,350,450,450);
      line(350,450,450,350);
      beurt = 2;
      Vakjes[8] = 1;
      
    }else if(Vakjes[8] == 0 && beurt == 1){
      circle(400, 400, 75);
      beurt = 1;
      Vakjes[8] = 2;
    }
  }    
}
