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
 String LvivId = "id=702550"; //City ID Number
 boolean Lviv=true, Milan=false, Toronto=false;
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
  rectangles();
}
//
void draw() {
cityRectangles();
}
//End Draw
void keyPressed() {
  APICall();
} //End keyPressed
//
void mousePressed() {
    if ( mouseX>=TorontoX && mouseX<=TorontoX+TorontoWidth && mouseY>= TorontoY && mouseY<=TorontoY+TorontoHeight) {
   LvivId="id=6167865";
   APICall();
  unwrapToVariables();
  Lviv=false;
  Milan=false;
  Toronto=true;
    }
    if ( mouseX>=LvivX && mouseX<=LvivX+LvivRectWidth && mouseY>= LvivY && mouseY<=LvivY+LvivRectHeight) {
       LvivId = "id=702550";
       APICall();
  unwrapToVariables();
   Lviv=true;
  Milan=false;
  Toronto=false;
     }
    if ( mouseX>=MilanX && mouseX<=MilanX+MilanWidth && mouseY>= MilanY && mouseY<=MilanY+MilanHeight) {
  LvivId="id=3173435";
  APICall();
  unwrapToVariables();
   Lviv=false;
  Milan=true;
  Toronto=false;
}
  population();
  buildingURL();
  APICall();
  unwrapToVariables();
  rectangles();
}
//
//End MAIN Program
