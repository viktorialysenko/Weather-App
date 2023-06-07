color black= #000000;
PFont lucida;

void textSetup( ) {
  lucida = createFont("Constantia", 24);
 
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  //int size = 24; //Change the number until it fits
  textFont(lucida, 36); 
}//End textSetup
String date;
void barText() {
  fill(black);
// text(apiCurrentDateCall, dateX, dateY, dateX, dateY);
  text( nameLviv,LvivX, LvivY, LvivRectWidth, LvivRectHeight);
  //
  text(tempLviv+"°C",temperatureX+temperatureWidth*1/2, temperatureY+temperatureHeight*1/2);
  // 
  textFont(lucida, 20); 
  fill(#0043C4);
   text("Low:\t\t",lowX+lowWidth*1/2, lowY+lowHeight*1/4);
  text(tempMinLviv+"°C", lowX+lowWidth*1/2, lowY+lowHeight*3/4);
   fill(#C13802);
   text("High:\t\t",highX+highWidth*1/2, highY+highHeight*1/4);
  text(tempMaxLviv+"°C",highX+highWidth*1/2, highY+highHeight*3/4);
  //fill(resetDefaultInk);
  //////////////////////Forecast Text
    textFont(lucida, 36);
  text("Forecast", LvivX, LvivY+temperatureHeight*4.2, LvivRectWidth, LvivRectHeight);
  ///FEELS LIKE
     textFont(lucida, 25);
     fill(#000000);
  text("Feels like:",FeelsLikeX, FeelsLikeY, temperatureWidth, temperatureHeight*1/2);
   text(""+feelsLikeLviv+"°C" ,FeelsLikeX, FeelsLikeY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
   //WIND
  text("Wind:", WindX, WindY, temperatureWidth, temperatureHeight*1/2);  
  text(""+windSpeedLviv+"km/h",WindX, WindY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  //Pressure
  text("Pressure:",PressureX, PressureY, temperatureWidth, temperatureHeight*1/2);
  text(""+pressureLviv+" kPa",PressureX, PressureY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  text("Gust:", GustX, GustY, temperatureWidth, temperatureHeight*1/2);
  text(""+gustLviv+"km/h", GustX, GustY+ temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  text("Humidity:",HumidityX, HumidityY, temperatureWidth, temperatureHeight*1/2);
    text(""+humidityLviv+"%",HumidityX, HumidityY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
}//End spaceBarText
//
