import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/weather_app.dart';
import 'data/current_weather_model.dart';
import 'data/forecast_weather_model.dart';

void main() {
  return runApp(
    ScopedModel<CurrentWeatherModel>(
      model: CurrentWeatherModel(),
      child: ScopedModel<ForecastWeatherModel>(
        model: ForecastWeatherModel(),
        child: WeatherApp(),
      ),
    ),
  );
}
