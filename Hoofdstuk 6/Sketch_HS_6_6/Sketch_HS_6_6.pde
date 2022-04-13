float cijferquest1 = 8;
float cijferquest2 = 8.5;
float cijferquest3 = 7.5;
float totaal = 0;
float gemiddelde = 0;
String Volbrachtquest1 = "Jij hebt Quest 1 volbracht!! :)";
String Volbrachtquest2 = "Jij hebt Quest 2 volbracht!! :)";
String Volbrachtquest3 = "Jij hebt Quest 3 volbracht!! :)";
String NietVolbrachtquest1 = "Jij hebt Quest 1 NIET volbracht!! :(";
String NietVolbrachtquest2 = "Jij hebt Quest 2 NIET volbracht!! :(";
String NietVolbrachtquest3 = "Jij hebt Quest 3 NIET volbracht!! :(";
String Gehaald = "Gefeliciteerd, jij hebt alle quests volbracht!! :)";
String Gefaald = "Jij hebt alle quests niet volbracht!! En je hebt geen vrijstelling :(";
boolean Quest1 = false;
boolean Quest2 = false;
boolean Quest3 = false;
boolean Complete = true;
boolean vrijstelling = false;
boolean cumlaude = false;

if(cijferquest1 >= 6){
  Quest1 = true;
  println(Volbrachtquest1);
  
}else if(cijferquest1 <= 5.9){
  Complete = false;
println(NietVolbrachtquest1);
}

if(cijferquest2 >= 6){
  Quest2 = true;
  println(Volbrachtquest2);
  
}else if(cijferquest2 <= 5.9){
  Complete = false;
println(NietVolbrachtquest2);
}

if(cijferquest3 >= 6){
  Quest3 = true;
  println(Volbrachtquest3);
  
}else if(cijferquest3 <= 5.9){
  Complete = false;
println(NietVolbrachtquest3);
}

totaal = cijferquest1 + cijferquest2 + cijferquest3;
gemiddelde = totaal / 3;

if(gemiddelde >= 8){
  cumlaude = true;
  println("Gefeliciteerd, jij hebt alle quests volbracht, maar ook nog alles gemiddeld boven een 8, dit is super goed!!");
  
}else if(Complete){
println(Gehaald);
  
}else if(vrijstelling){
println("Jij hebt een vrijstelling, normaal zou jij het niet gehaald hebben, maar dat heb je nu toch!! Gefeliciteerd!! :)");
  
}else if(!Complete){
println(Gefaald);
}

  
