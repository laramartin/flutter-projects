import 'package:flutter/material.dart';
import 'package:weather_app/data/current_weather_model.dart';
import 'package:weather_app/data/forecast_weather_model.dart';
import 'package:weather_app/home_screen.dart';
import 'package:weather_app/utils/utils.dart';

import 'package:weather_app/presentation/currentweather/current_weather_content.dart';
import 'package:weather_app/presentation/currentweather/current_weather_header.dart';
import 'package:weather_app/presentation/forecast/forecast_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    Key key,
    @required this.currentWeatherModel,
    @required this.forecastWeatherModel,
  }) : super(key: key);

  final CurrentWeatherModel currentWeatherModel;
  final ForecastWeatherModel forecastWeatherModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
      child: Column(
        children: <Widget>[
          CurrentWeatherHeader(
            city: currentWeatherModel.getCurrentWeatherCity(),
            date: getCurrentTimeDate(
                currentWeatherModel.getCurrentWeatherTimestamp()),
            hour: getCurrentTimeHours(
                currentWeatherModel.getCurrentWeatherTimestamp()),
          ),
          Flexible(
            flex: 4,
            child: CurrentWeatherContent(
              iconAsset: currentWeatherModel.getCurrentWeatherIcon(),
              temperature: currentWeatherModel.getCurrentTemperature(),
              description: currentWeatherModel.getCurrentWeatherDescription(),
              pressure: currentWeatherModel.getCurrentWeatherPressure(),
              humidity: currentWeatherModel.getCurrentWeatherHumidity(),
              windSpeed: currentWeatherModel.getCurrentWeatherWindSpeed(),
            ),
          ),
          Flexible(
              flex: 2,
              child: ForecastWidget(
                  mapForecastToForecastItems(forecastWeatherModel))),
        ],
      ),
    );
  }
}
