import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
import '../keys.dart';
import 'model/forecastweather/forecast_day.dart';
import 'model/forecastweather/forecast_weather_response.dart';

class ForecastWeatherModel extends Model {
  ForecastWeatherResponse forecast;

  fetchForecast() async {
    var jsonResponse = await http.get(
        "http://api.openweathermap.org/data/2.5/forecast/daily?q=Berlin&APPID=${Keys.openWeatherMapApiKey}&units=metric&cnt=5");
    Map json = jsonDecode(jsonResponse.body);
    var response = ForecastWeatherResponse.fromJson(json);

    var daySample = response.forecasts[0];
    print(
        "forecast day ${daySample.timestamp}. Min temp: ${daySample.temperature.minTemperature}. "
        "Max temp: ${daySample.temperature.maxTemperature}");

    forecast = response;

    notifyListeners();
  }

  List<ForecastDay> getForecasts() => forecast?.forecasts;

  int getForecastTimeStamp(ForecastDay forecastDay) => forecastDay.timestamp;

  int getForecastMinTemperature(ForecastDay forecastDay) => forecastDay.temperature.minTemperature.round();

  int getForecastMaxTemperature(ForecastDay forecastDay) => forecastDay.temperature.maxTemperature.round();

  String getForecastIcon(ForecastDay forecastDay) => forecastDay.weather[0].iconId;
}
