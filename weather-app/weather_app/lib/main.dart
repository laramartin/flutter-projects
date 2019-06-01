import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'data/current_weather_service.dart';

void main() {
  return runApp(ScopedModel<CurrentWeatherService>(
    model: CurrentWeatherService(),
    child: WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScopedModel.of<CurrentWeatherService>(context).fetchWeather();

    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: ScopedModelDescendant<CurrentWeatherService>(
            builder: (context, child, model) {
          return Text("${model.getCurrentTemperature()}");
        }),
      ),
    );
  }
}
