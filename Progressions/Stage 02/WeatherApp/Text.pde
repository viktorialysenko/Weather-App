color black= #000000;
PFont lucida;

void textSetup( ) {
  lucida = createFont("Constantia", 24);

}//End textSetup
void barText() {
  fill(black); 
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  //int size = 24; //Change the number until it fits
  textFont(lucida, 36); 
  text( nameLviv,dateX, dateY, dateRectWidth, dateRectHeight );
  //fill(resetDefaultInk);
}//End spaceBarText
//
