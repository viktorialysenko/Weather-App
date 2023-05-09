// Open Weather Map App
// Global Variables
float appWidth,appHeight;
//
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  //Gemoetry
population();
  //DIV rect()
  buildingURL();
  APICall();
  //unwrapToVariables();
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
