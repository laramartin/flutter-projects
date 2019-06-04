import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/ui/currentweather/current_weather_content.dart';
import 'package:weather_app/ui/currentweather/current_weather_header.dart';
import 'package:weather_app/ui/forecast/forecast_item.dart';
import 'package:weather_app/ui/forecast/forecast_widget.dart';

import 'data/current_weather_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: ScopedModelDescendant<CurrentWeatherService>(
          builder: (context, child, model) {
            var forecastItem = ForecastItem("Sun", "01n", 3, 6);
            var forecast = [forecastItem, forecastItem, forecastItem, forecastItem, forecastItem];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CurrentWeatherHeader(
                city: model.getCurrentWeatherCity(),
                // TODO: use real data formatted
                date: "Sun, Jun 2",
                hour: "15:51",
              ),
              CurrentWeatherContent(
                iconAsset: model.getCurrentWeatherIcon(),
                temperature: model.getCurrentTemperature(),
                description: model.getCurrentWeatherDescription(),
                pressure: model.getCurrentWeatherPressure(),
                humidity: model.getCurrentWeatherHumidity(),
                windSpeed: model.getCurrentWeatherWindSpeed(),
              ),
              ForecastWidget(forecast),
            ],
          ),
        );
      }),
    );
  }
}
