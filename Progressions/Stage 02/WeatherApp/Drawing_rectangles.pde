void cityRectangles(){
   if ( mouseX>=LvivX && mouseX<=LvivX+LvivRectWidth && mouseY>= LvivY && mouseY<=LvivY+LvivRectHeight) {
     fill(#C13802);

  } else {
    if (Lviv==true){
       fill(#C13802);} else { 
    fill(white); }
  }
   rect (LvivX, LvivY, LvivRectWidth, LvivRectHeight);
        CityNamesText();
   fill(white);
   ////
     if ( mouseX>=MilanX && mouseX<=MilanX+MilanWidth && mouseY>= MilanY && mouseY<=MilanY+MilanHeight) {
       fill(#C13802);
 } else {
    if (Milan==true){
       fill(#C13802);} else { 
    fill(white); }
  }
    rect (MilanX, MilanY, MilanWidth, MilanHeight);
         CityNamesText();
    ///
     if ( mouseX>=TorontoX && mouseX<=TorontoX+TorontoWidth && mouseY>= TorontoY && mouseY<=TorontoY+TorontoHeight) {
       fill(#C13802);
  } else {
    if (Toronto==true){
       fill(#C13802); } else { 
    fill(white); }
  }
    rect (TorontoX, TorontoY, TorontoWidth,TorontoHeight);
         CityNamesText();
  //
}//End cityRectangles


void rectangles(){ 
  
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
  image (weatherImage, iconX, iconY, iconWidth, iconHeight);

}//End rectangles
