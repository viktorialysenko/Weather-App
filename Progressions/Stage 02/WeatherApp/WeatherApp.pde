// Open Weather Map App
// Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
float dateX, dateY, dateRectWidth, dateRectHeight;
float LvivX, LvivY, LvivRectWidth, LvivRectHeight, temperatureX, temperatureY, temperatureWidth, temperatureHeight;
float highX, highY, highWidth, highHeight, lowX, lowY, lowWidth, lowHeight, iconX, iconY, iconWidth, iconHeight;
float FeelsLikeX, FeelsLikeY, WindX, WindY,PressureX, PressureY,GustX, GustY,HumidityX, HumidityY ;
float MilanX, MilanY, MilanWidth, MilanHeight,TorontoX, TorontoY, TorontoWidth,TorontoHeight;
  String  CurrentDateLviv;
  color white=#FFFFFF;
  float h3forecastX,h3forecastY, h3forecastWidth, h3forecastHeight, h6forecastX,h6forecastY, h6forecastWidth, h6forecastHeight,h9forecastX, h9forecastY, h9forecastWidth, h9forecastHeight;
 String LvivId ;
void setup() {
  background(#C9F1FF);
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  display();

  population();
  buildingURL();
  APICall();
  unwrapToVariables();
  fill(#FFFFFF);
  rect(dateX, dateY, dateRectWidth, dateRectHeight);
  rect(temperatureX, temperatureY, temperatureWidth, temperatureHeight);
  rect(highX, highY, highWidth, highHeight);
  rect(lowX, lowY, lowWidth, lowHeight);
     rect(iconX, iconY, iconWidth, iconHeight);
  //
 
  rect(FeelsLikeX, FeelsLikeY, temperatureWidth, temperatureHeight);
  rect(WindX, WindY, temperatureWidth, temperatureHeight);
  rect(PressureX, PressureY, temperatureWidth, temperatureHeight);
  rect(GustX, GustY, temperatureWidth, temperatureHeight);
  rect(HumidityX, HumidityY, temperatureWidth, temperatureHeight);
  //
  rect(h3forecastX,h3forecastY, h3forecastWidth, h3forecastHeight);
   rect(h6forecastX,h6forecastY, h6forecastWidth, h6forecastHeight);
    rect(h9forecastX,h9forecastY, h9forecastWidth, h9forecastHeight);
  textSetup();
  barText();

  PImage weatherImage = loadImage( imageURL(iconLviv) );
  image (weatherImage, iconX, iconY, iconWidth, iconHeight); //Simple Image Output without layout division or aspect ratio
  //Note: background of image is "not included", only forefroun
}
//
void draw() {

   if ( mouseX>=LvivX && mouseX<=LvivX+LvivRectWidth && mouseY>= LvivY && mouseY<=LvivY+LvivRectHeight) {
     fill(#C13802);

  } else {
    fill(white);
  }
   rect (LvivX, LvivY, LvivRectWidth, LvivRectHeight);
        CityNamesText();
   fill(white);
   ////
     if ( mouseX>=MilanX && mouseX<=MilanX+MilanWidth && mouseY>= MilanY && mouseY<=MilanY+MilanHeight) {
       fill(#C13802);
  } else {
  fill(white);
  }
    rect (MilanX, MilanY, MilanWidth, MilanHeight);
         CityNamesText();
    ///
     if ( mouseX>=TorontoX && mouseX<=TorontoX+TorontoWidth && mouseY>= TorontoY && mouseY<=TorontoY+TorontoHeight) {
       fill(#C13802);
  } else {
  fill(white);
  }
    rect (TorontoX, TorontoY, TorontoWidth,TorontoHeight);
         CityNamesText();
  //
}
//
void keyPressed() {
  APICall();
} //End keyPressed
//
void mousePressed() {
  APICall();
    if ( mouseX>=TorontoX && mouseX<=TorontoX+TorontoWidth && mouseY>= TorontoY && mouseY<=TorontoY+TorontoHeight) {
   LvivId="6167865";
   APICall();
  unwrapToVariables();
    }
    if ( mouseX>=LvivX && mouseX<=LvivX+LvivRectWidth && mouseY>= LvivY && mouseY<=LvivY+LvivRectHeight) {
       LvivId = "id=702550";
       APICall();
  unwrapToVariables();
     }
    if ( mouseX>=MilanX && mouseX<=MilanX+MilanWidth && mouseY>= MilanY && mouseY<=MilanY+MilanHeight) {
  LvivId="3173435";}
 
}
//
//End MAIN Program
