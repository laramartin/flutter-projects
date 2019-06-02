import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/ui/currentweather/current_weather_header.dart';
import 'data/current_weather_service.dart';
import 'utils/utils.dart';

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
      theme: ThemeData(textTheme: Typography.blackMountainView,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: ScopedModelDescendant<CurrentWeatherService>(
            builder: (context, child, model) {
          var asset = getWeatherIcon(model.getCurrentWeatherIcon());
          return Column(
            children: <Widget>[
              CurrentWeatherHeader(
                city: model.getCurrentWeatherCity(),
                date: "Sun, Jun 2",
                hour: "15:51",
              )
            ],
          );
        }),
      ),
    );
  }
}
