// Open Weather Map App
// Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
float dateX, dateY, dateRectWidth, dateRectHeight;
float LvivX, LvivY, LvivRectWidth, LvivRectHeight, temperatureX, temperatureY, temperatureWidth, temperatureHeight;
float highX, highY, highWidth, highHeight, lowX, lowY, lowWidth, lowHeight, iconX, iconY, iconWidth, iconHeight;
//
void setup() {
  background(#C9F1FF);
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  display();

  //Gemoetry
  population();
  //DIV rect()
  // textSetup();
  buildingURL();
  APICall();
  unwrapToVariables();
  rect(dateX, dateY, dateRectWidth, dateRectHeight);
  rect (LvivX, LvivY, LvivRectWidth, LvivRectHeight);
  rect(temperatureX, temperatureY, temperatureWidth, temperatureHeight);
  rect(highX, highY, highWidth, highHeight);
  rect(lowX, lowY, lowWidth, lowHeight);
  //
  rect(iconX, iconY, iconWidth, iconHeight);
  //
  rect (LvivX, LvivY+temperatureHeight*2.3, LvivRectWidth, LvivRectHeight);
  textSetup();
  barText();

  PImage weatherImage = loadImage( imageURL(iconLviv) );
  image (weatherImage, iconX, iconY, iconWidth, iconHeight); //Simple Image Output without layout division or aspect ratio
  //Note: background of image is "not included", only forefroun
}
//
void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Calgary, Red Deer
}
//
void keyPressed() {
  APICall();
  //unwrapToVariables();
  //println(apiCurrentDateCall);
} //End keyPressed
//
void mousePressed() {
  APICall();
  //unwrapToVariables();
  //println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
}
//
//End MAIN Program
