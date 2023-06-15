//Global Variable
String URLCurrentLviv;
String URLForecastLviv;
//
JSONObject jsonCurrentLviv;
JSONObject jsonForecastLviv;

void buildingURL() {
  //Lesson for reading URLs is in String Names
  String domain = "http://api.openweathermap.org"; //http vs https, s for secure
  String baseULR_data = "/data/2.5/"; //opens two folders
  String folderWeather = "weather?"; //opens weather folder
  String folderForecast = "forecast?"; //opens forecast folder
  //
  String baseURL_Current = domain + baseULR_data + folderWeather;
  String baseURL_Forecast = domain + baseULR_data + folderForecast;
  //
 // String LvivId = "id=702550"; //City ID Numbers
  //
  String apiKey = "APPID=90629fbe422e899d3d3a2948ec1aa94e"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  //
  URLCurrentLviv = baseURL_Current+LvivId+and+apiKey+and+mode+and+unitMetric;
  URLForecastLviv = baseURL_Forecast+LvivId+and+apiKey+and+mode+and+unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly

  println(URLCurrentLviv);
  println(URLForecastLviv);
} //End buildingURL()

void APICall() {
  jsonCurrentLviv = loadJSONObject(URLCurrentLviv);
  jsonForecastLviv = loadJSONObject(URLForecastLviv);
  println(jsonCurrentLviv); 
 //   println(jsonForecastLviv);
} //End APICall

//Loading JSONObjects with Website API Data
