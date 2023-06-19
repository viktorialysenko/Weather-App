String imageURL(String weatherIcon) {
  //Local Variables
  String imageURL = "http://openweathermap.org/img/wn/";
  String fileExtensionPNG = ".png";
//
  String imageNumber = weatherIcon; 
  String scale = "@2x"; 
  String currentImage = imageURL+imageNumber+scale+fileExtensionPNG;
  println("Image:", currentImage);
  //
  return currentImage; //Concatenated Image URL with current
}
