String Uiteindelijk;

void setup(){
  size(500,500);
  Uiteindelijk = langeZin("Hallo", " dit" , " is een", " zin");
  println(Uiteindelijk);
}

void draw(){

}

String langeZin(String a, String b, String c, String d){
  String antwoord;
  antwoord = a + b + c + d;
  return antwoord;
}
