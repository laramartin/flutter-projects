import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/utils/styles.dart';
import 'data/current_weather_model.dart';
import 'data/forecast_weather_model.dart';
import 'home_screen.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScopedModel.of<CurrentWeatherModel>(context).fetchWeather();
    ScopedModel.of<ForecastWeatherModel>(context).fetchForecast();

    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        textTheme: SoftGreyForReadingTheme,
//      textTheme: Typography.blackMountainView,
        primarySwatch: Colors.blue,
        accentColor: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}
