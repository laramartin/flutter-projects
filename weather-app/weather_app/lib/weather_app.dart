import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'data/current_weather_service.dart';
import 'home_screen.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScopedModel.of<CurrentWeatherService>(context).fetchWeather();

    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        textTheme: Typography.blackMountainView,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
