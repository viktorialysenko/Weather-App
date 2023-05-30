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
  
}
