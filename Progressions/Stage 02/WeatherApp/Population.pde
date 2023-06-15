float rectScaleWidth, rectScaleHeight;
float rectStartDrawX, rectStartDrawY;
void population() {
  rectScaleWidth=1.0/5.0;//used to change x-size
  rectScaleHeight =1.0/19.0;//used to change y-size
 dateRectWidth = appWidth* rectScaleWidth;
 dateRectHeight = appHeight * rectScaleHeight;
  dateX = appWidth*0+dateRectWidth*1/20;
  dateY= appHeight*0+dateRectHeight*1/4;
  //
  LvivRectWidth=dateRectWidth;
  LvivRectHeight=dateRectHeight;
  LvivX=appWidth*1/2-LvivRectWidth*1/2;
  LvivY=0+dateRectHeight;
  //
  MilanX=LvivX+LvivRectWidth+LvivRectWidth*1/10;
  MilanY=LvivY;
  MilanWidth=LvivRectWidth;
  MilanHeight=LvivRectHeight;
  //
  TorontoX=MilanX;
  TorontoY=MilanY+ MilanHeight+MilanHeight*1/6;
  TorontoWidth=MilanWidth;
  TorontoHeight=MilanHeight;
  //
  temperatureWidth=LvivRectWidth*1/2;
  temperatureHeight=LvivRectHeight*2.5;
  temperatureX=appWidth*1/2-temperatureWidth*1/2;
  temperatureY=LvivY+LvivRectHeight;
  //
  highWidth=temperatureWidth*1/2;
  highHeight=temperatureHeight*1/2;
  highX=appWidth*1/2-LvivRectWidth*1/7-highWidth;
  highY=temperatureY+temperatureHeight;
  //
  lowX=appWidth*1/2+LvivRectWidth*1/7;
  lowY=highY;
  lowWidth= highWidth;
  lowHeight= highHeight;
 //
 iconX=dateX+dateRectWidth*1/4;
 iconY=temperatureY;
 iconWidth=temperatureWidth;
 iconHeight=temperatureHeight;
 FeelsLikeX=iconX;
 FeelsLikeY=LvivY+temperatureHeight*2.3;
  WindX=dateX+ temperatureWidth + temperatureWidth*1.5;
  WindY=FeelsLikeY;
  PressureX=temperatureX;
  PressureY=FeelsLikeY;
  GustX=PressureX + temperatureWidth +temperatureWidth;
  GustY=FeelsLikeY;
  HumidityX=GustX + temperatureWidth +temperatureWidth;
  HumidityY =FeelsLikeY;
  //
  h3forecastX=WindX;
  h3forecastY=FeelsLikeY+temperatureHeight+temperatureHeight*2.3;
  h3forecastWidth=temperatureWidth;
  h3forecastHeight=temperatureHeight;
 //
   h6forecastX=PressureX;
   h6forecastY=h3forecastY;
   h6forecastWidth=h3forecastWidth;
   h6forecastHeight=h3forecastHeight;
//
  h9forecastX=GustX;
  h9forecastY= h3forecastY;
  h9forecastWidth=h3forecastWidth;
  h9forecastHeight=h3forecastHeight;
}
