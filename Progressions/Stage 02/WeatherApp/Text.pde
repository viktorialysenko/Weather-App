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
  text(nameLviv, dateX, dateY, dateRectWidth, dateRectHeight );
  text( nameLviv,LvivX, LvivY, LvivRectWidth, LvivRectHeight);
  //
  text(tempLviv+"°C",temperatureX+temperatureWidth*1/2, temperatureY+temperatureHeight*1/2);
  // 
  textFont(lucida, 20); 
  fill(#0043C4);
  text(tempMinLviv+"°C", lowX+lowWidth*1/2, lowY+lowHeight*1/2);
   fill(#C13802);
  text(tempMaxLviv+"°C",highX+highWidth*1/2, highY+highHeight*1/2);
  //fill(resetDefaultInk);
}//End spaceBarText
//
