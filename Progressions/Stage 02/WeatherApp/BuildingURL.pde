//Global Variable
String URLCurrentLviv;
String URLForecastLviv;
//
JSONObject jsonCurrentLviv;
JSONObject jsonForecastLviv;

void buildingURL() {
  //Lesson for reading URLs is in String Names
  String domain = "http://api.openweathermap.org"; 
  String baseULR_data = "/data/2.5/";
  String folderWeather = "weather?";
  String folderForecast = "forecast?"; 
  //
  String baseURL_Current = domain + baseULR_data + folderWeather;
  String baseURL_Forecast = domain + baseULR_data + folderForecast;
  //
 //String LvivId = "id=702550"; //City ID Numbers
  //
  String apiKey = "APPID=90629fbe422e899d3d3a2948ec1aa94e"; 
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  //
  URLCurrentLviv = baseURL_Current+LvivId+and+apiKey+and+mode+and+unitMetric;
  URLForecastLviv = baseURL_Forecast+LvivId+and+apiKey+and+mode+and+unitMetric;


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
