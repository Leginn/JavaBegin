String gewildeNaam = "Jan";
boolean gevonden = false;
String[] naam = {"Piet", "Jan", "Kees", "Ben", "Klaas"};

void setup(){
  gevonden = false;
  for(int i = 0; i < naam.length; i++){
    if(gewildeNaam == naam[i]){
      gevonden = true;
    }
  }  
  
  if(gevonden){
    println("De naam is gevonden, de naam is: " + gewildeNaam);
  }else{
    println("De gewilde naam is niet gevonden!");
  }
}
