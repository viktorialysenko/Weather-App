import java.util.Date;
//Global Variables
String mainWeatherLviv, descriptionLviv, iconLviv, countryLviv, nameLviv, windLviv;
float tempLviv, tempMinLviv, tempMaxLviv, feelsLikeLviv, humidityLviv, windSpeedLviv,pressureLviv,clouds;
float tempForecastLviv, tempIn6Hours,tempIn9Hours;
String icon3hForecast;
int sunriseLviv, sunsetLviv;
Date apiCurrentDateCall;
int dtInt;


void unwrapToVariables() {
  currentLviv();
  forecastLviv() ;

}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  textSetup();
  fill(black);
return dateHuman;
  
}

void currentLviv() {

  JSONArray weatherLviv = jsonCurrentLviv.getJSONArray("weather"); //Unwrapping
  //  printArray(weatherLviv);

  JSONObject allLviv = weatherLviv.getJSONObject(0); //Unwrap {}
  iconLviv = allLviv.getString("icon");

  JSONObject mainLviv = jsonCurrentLviv.getJSONObject("main"); //Unwrap {}
  tempLviv = mainLviv.getFloat("temp");
  feelsLikeLviv=mainLviv.getFloat("feels_like");
  tempMinLviv = mainLviv.getFloat("temp_min");
  tempMaxLviv = mainLviv.getFloat("temp_max");
  humidityLviv = mainLviv.getFloat("humidity");
  pressureLviv= mainLviv.getFloat("pressure");
  
   JSONObject cloudsLviv = jsonCurrentLviv.getJSONObject("clouds");
   clouds=cloudsLviv.getFloat("all");

  JSONObject windLviv = jsonCurrentLviv.getJSONObject("wind");
  windSpeedLviv=windLviv.getFloat("speed");
  //gustLviv=windLviv.getFloat("gust");
 
  long apiCallTimeLviv = jsonCurrentLviv.getInt("dt"); 
  apiCurrentDateCall = humanDate(apiCallTimeLviv);
  println(apiCurrentDateCall);
  //

  JSONObject sysLviv = jsonCurrentLviv.getJSONObject("sys"); //Unwrap {}
  countryLviv = sysLviv.getString("country");
  sunriseLviv = sysLviv.getInt("sunrise");
  sunsetLviv = sysLviv.getInt("sunset");

  nameLviv = jsonCurrentLviv.getString("name");
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void forecastLviv() {
  JSONArray forecastLviv = jsonForecastLviv.getJSONArray("list"); //Unwrapping
  JSONObject overallLviv = forecastLviv.getJSONObject(0); //Unwrap {}
JSONObject main = overallLviv.getJSONObject("main"); //Unwrap {}
  tempForecastLviv = main.getFloat("temp");
println("temp "+tempForecastLviv);
//
JSONObject in6HoursForecast = forecastLviv.getJSONObject(1); //Unwrap {}
 JSONObject in6Hours =in6HoursForecast.getJSONObject("main"); 
 tempIn6Hours = in6Hours.getFloat("temp");
 println("temp in 6 hours "+tempIn6Hours);
 //
 JSONObject in9HoursForecast = forecastLviv.getJSONObject(2); //Unwrap {}
 JSONObject in9Hours =in9HoursForecast.getJSONObject("main"); 
 tempIn9Hours = in9Hours.getFloat("temp");
 println("temp in 9 hours "+tempIn9Hours);
 
 

}
//End forecastLviv
