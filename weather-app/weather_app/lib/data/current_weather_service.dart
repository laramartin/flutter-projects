import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/data/model/weather_response.dart';

import '../keys.dart';

class CurrentWeatherService extends Model {
  CurrentWeatherResponse currentWeather;

  fetchWeather() async {
    var jsonResponse = await http.get(
        "http://api.openweathermap.org/data/2.5/weather?q=Berlin&APPID=${Keys.openWeatherMapApiKey}&units=metric");
    Map json = jsonDecode(jsonResponse.body);
    var response = CurrentWeatherResponse.fromJson(json);
    print(
        "current temperature in ${response.city}: ${response.mainStats.temperature}");
    print("icon to load: ${response.weather[0].iconId}");

    currentWeather = response;

    notifyListeners();
  }

  int getCurrentTemperature() => currentWeather?.mainStats?.temperature?.round();

  String getCurrentWeatherIcon() => currentWeather?.weather[0]?.iconId;

  String getCurrentWeatherDescription() => currentWeather?.weather[0]?.description;

  int getCurrentWeatherTimestamp() => currentWeather?.timestamp;

  String getCurrentWeatherCity() => currentWeather?.city;

  int getCurrentWeatherPressure() => currentWeather?.mainStats?.pressure;

  int getCurrentWeatherHumidity() => currentWeather?.mainStats?.humidity;

  double getCurrentWeatherWindSpeed() => currentWeather?.wind?.speed;
}
