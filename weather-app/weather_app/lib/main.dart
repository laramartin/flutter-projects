import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/weather_app.dart';
import 'data/current_weather_service.dart';

void main() {
  return runApp(ScopedModel<CurrentWeatherService>(
    model: CurrentWeatherService(),
    child: WeatherApp(),
  ));
}
