String imageURL(String weatherIcon) {
  //Local Variables
  String imageURL = "http://openweathermap.org/img/wn/";
  String fileExtensionPNG = ".png";
//
  String imageNumber = weatherIcon; 
  String scale = "@2x"; //Procedure whatScale() //scale accoring to rect()-div, on smaller dimension
  //Note time ... String currentImage = imageURL+imageNumber+time+scale+fileExtensionPNG;
  String currentImage = imageURL+imageNumber+scale+fileExtensionPNG;
  //
  //Verify Image URL before loading into Image Variable
  println("Image:", currentImage);
  //
  return currentImage; //Concatenated Image URL with current
}
