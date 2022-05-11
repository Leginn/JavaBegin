int[] array = {10,5,4,5,6,73,56,674,34,63,53,10,53,10,45,4,46,6,10};
int gezocht = 10;
int aantal = 0;
Boolean gevonden = false;

void setup(){
  for(int i = 0; i < array.length; i++){
    if(array[i] == gezocht){    
      gevonden = true;
      aantal++;
    }
}
  if(gevonden){
    println("Het nummer is gevonden, het nummer is: " + gezocht + ", hier zijn er " + aantal + " van gevonden.");
  
  }else{
    println("het gezochte nummer is niet gevonden.");
  }
   
}
