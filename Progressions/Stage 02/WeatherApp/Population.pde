float rectScaleWidth, rectScaleHeight;
float rectStartDrawX, rectStartDrawY;
void population() {
  rectScaleWidth=1.0/5.0;//used to change x-size
  rectScaleHeight =1.0/19.0;//used to change y-size
 dateRectWidth = appWidth* rectScaleWidth;
 dateRectHeight = appHeight * rectScaleHeight;
  dateX = appWidth*0+dateRectWidth*1/20;
  dateY= appHeight*0+dateRectHeight*1/4;
}
