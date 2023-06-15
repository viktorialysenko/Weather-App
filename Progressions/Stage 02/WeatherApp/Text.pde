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
void CityNamesText() {
  fill(black);
  textFont(lucida, 36);
  text( nameLviv, LvivX, LvivY, LvivRectWidth, LvivRectHeight);
   text("Milan", MilanX, MilanY, MilanWidth, MilanHeight);
  text("Toronto", TorontoX, TorontoY, TorontoWidth, TorontoHeight);
  
};
void barText() {
  fill(black);
  textFont(lucida, 22);
  CurrentDateLviv = ""+apiCurrentDateCall;
  println(CurrentDateLviv);
  text(CurrentDateLviv, dateX, dateY, dateRectWidth, dateRectHeight);
  textFont(lucida, 36);
  text( nameLviv, LvivX, LvivY, LvivRectWidth, LvivRectHeight);
  //
  text(tempLviv+"°C", temperatureX+temperatureWidth*1/2, temperatureY+temperatureHeight*1/2);
  //
  textFont(lucida, 20);
  fill(#0043C4);
  text("Low:\t\t", lowX+lowWidth*1/2, lowY+lowHeight*1/4);
  text(tempMinLviv+"°C", lowX+lowWidth*1/2, lowY+lowHeight*3/4);
  fill(#C13802);
  text("High:\t\t", highX+highWidth*1/2, highY+highHeight*1/4);
  text(tempMaxLviv+"°C", highX+highWidth*1/2, highY+highHeight*3/4);
  //fill(resetDefaultInk);
  //////////////////////Forecast Text
  textFont(lucida, 36);
  fill(#000000);
  text("Forecast", LvivX, LvivY+temperatureHeight*4.2, LvivRectWidth, LvivRectHeight);
  text("Milan", MilanX, MilanY, MilanWidth, MilanHeight);
  text("Toronto", TorontoX, TorontoY, TorontoWidth, TorontoHeight);
  ///FEELS LIKE
  textFont(lucida, 25);
  fill(#000000);
  text("Feels like:", FeelsLikeX, FeelsLikeY, temperatureWidth, temperatureHeight*1/2);
  text(""+feelsLikeLviv+"°C", FeelsLikeX, FeelsLikeY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  //WIND
  text("Wind:", WindX, WindY, temperatureWidth, temperatureHeight*1/2);
  text(""+windSpeedLviv+"km/h", WindX, WindY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  //Pressure
  text("Pressure:", PressureX, PressureY, temperatureWidth, temperatureHeight*1/2);
  text(""+pressureLviv+" kPa", PressureX, PressureY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  text("Gust:", GustX, GustY, temperatureWidth, temperatureHeight*1/2);
  text(""+gustLviv+"km/h", GustX, GustY+ temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  text("Humidity:", HumidityX, HumidityY, temperatureWidth, temperatureHeight*1/2);
  text(""+humidityLviv+"%", HumidityX, HumidityY+temperatureHeight*1/3, temperatureWidth, temperatureHeight*1/2);
  /////
  text("In 3 hours:", h3forecastX, h3forecastY, h3forecastWidth, h3forecastHeight*1/3);
  text(" "+ tempForecastLviv +" ", h3forecastX, h3forecastY+ h3forecastHeight*1/3, h3forecastWidth, h3forecastHeight*2/3);
  text("In 6 hours:", h6forecastX, h6forecastY, h6forecastWidth, h6forecastHeight*1/3);
  text(" "+ tempIn6Hours +" ", h6forecastX, h6forecastY+h6forecastHeight*1/3, h6forecastWidth, h6forecastHeight*2/3);
  text("In 9 hours:", h9forecastX, h9forecastY, h9forecastWidth, h9forecastHeight*1/3);
  text(" "+ tempIn9Hours +" ", h9forecastX, h9forecastY+h9forecastHeight*1/3, h9forecastWidth, h9forecastHeight*2/3);
}//End spaceBarText
//
