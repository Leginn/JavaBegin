float Cijfer = 6;
float Getal = 0;

void setup(){
Getal = Gemiddelde(Cijfer, 7);
println(Getal);
}

void draw(){

}

float Gemiddelde(float Cijfer1, float Cijfer2){
  float totaal = (Cijfer1 + Cijfer2) / 2;
  return totaal;

}
