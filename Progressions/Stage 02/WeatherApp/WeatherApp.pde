// Open Weather Map App
// Global Variables
int appWidth,appHeight, smallerDimension, largerDimension;
float dateX, dateY, dateRectWidth, dateRectHeight;
float LvivX, LvivY, LvivRectWidth, LvivRectHeight, temperatureX, temperatureY, temperatureWidth, temperatureHeight;
float highX, highY,highWidth, highHeight, lowX, lowY, lowWidth, lowHeight;
//
void setup() {
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
  //unwrapToVariables();
  rect(dateX, dateY, dateRectWidth, dateRectHeight);
  rect (LvivX, LvivY, LvivRectWidth, LvivRectHeight);
  rect(temperatureX, temperatureY, temperatureWidth, temperatureHeight);
  rect(highX, highY,highWidth, highHeight);
  rect(lowX, lowY, lowWidth, lowHeight);
  textSetup();
  barText();
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
