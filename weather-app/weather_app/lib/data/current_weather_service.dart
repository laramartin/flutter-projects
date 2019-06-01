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

    currentWeather = response;

    notifyListeners();
  }

  int getCurrentTemperature() {
    return currentWeather?.mainStats?.temperature?.round();
  }
}
