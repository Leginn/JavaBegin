size(850,400);
background(255,255,255);

float gewicht = 80;
float lengte = 1.83;
float leeftijd = 17;
float BMI = 0;

rect(100,100,130,40);
rect(350,100,130,40);
rect(600,100,130,40);

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;
println(BMI);


fill(0,0,0);
textSize(15);
text("Gewicht: " + gewicht + " KG",110,125);
text("Lengte: " + lengte + " meter",360,125);
text("Leeftijd: " + leeftijd + " jaar",610,125);

if(leeftijd < 70){
  if(BMI < 18.5){
    fill(255,255,0);
  }else if(BMI < 25){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else if(BMI >= 30){
    fill(255,0,0);
  }
}else if(leeftijd >= 70){
  if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
    fill(255,255,0);
  }else if(BMI >= 30){
    fill(255,0,0);
  }
}

textSize(30);
text("BMI: " + BMI,360,300);
