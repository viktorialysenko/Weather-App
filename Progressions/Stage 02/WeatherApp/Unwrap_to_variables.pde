//UnwrapToVariables
/* Code to Copy, use println() to verify
 - When validating data in JSON Lint
 - Choose which variables you need, create as Global Variables
 - build a generic unwrapping
 - build specfic unwrappings to Global Variables
 
 Note: use APICall() Variables here, for example jsonCurrentLviv
 Caution: variables should be a mix of global and local variables
 
 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping
 
 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");
 
 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");
 
 int apiCallTime = jsonObject-Variable.getInt("dt");
 
 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");
 
 String name = jsonObject-Variable.getString("name");
 
 */

import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970

//Global Variables
String mainWeatherLviv, descriptionLviv, iconLviv, countryLviv, nameLviv, windLviv;
float tempLviv, tempMinLviv, tempMaxLviv, feelsLikeLviv, humidityLviv, windSpeedLviv;
int sunriseLviv, sunsetLviv;
Date apiCurrentDateCall;


void unwrapToVariables() {
  println(jsonCurrentLviv);
  currentLviv();
  
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentLviv() {
  
  JSONArray weatherLviv = jsonCurrentLviv.getJSONArray("weather"); //Unwrapping
//  printArray(weatherLviv);

  JSONObject allLviv = weatherLviv.getJSONObject(0); //Unwrap {}
  mainWeatherLviv = allLviv.getString("main");
  descriptionLviv = allLviv.getString("description");
  iconLviv = allLviv.getString("icon");

  JSONObject mainLviv = jsonCurrentLviv.getJSONObject("main"); //Unwrap {}
  tempLviv = mainLviv.getFloat("temp");
  feelsLikeLviv=mainLviv.getFloat("feels_like");
  tempMinLviv = mainLviv.getFloat("temp_min");
  tempMaxLviv = mainLviv.getFloat("temp_max");
  humidityLviv = mainLviv.getFloat("humidity");
  println("temperature Lviv:", tempLviv  );

  JSONObject windLviv = jsonCurrentLviv.getJSONObject("wind");
  windSpeedLviv=windLviv.getFloat("speed");

  long apiCallTimeLviv = jsonCurrentLviv.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeLviv);

  JSONObject sysLviv = jsonCurrentLviv.getJSONObject("sys"); //Unwrap {}
  countryLviv = sysLviv.getString("country");
  sunriseLviv = sysLviv.getInt("sunrise");
  sunsetLviv = sysLviv.getInt("sunset");

  nameLviv = jsonCurrentLviv.getString("name");
  println("City Name", nameLviv );
}
