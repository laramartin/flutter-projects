import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:weather_app/data/forecast_weather_model.dart';
import 'package:weather_app/ui/currentweather/current_weather_content.dart';
import 'package:weather_app/ui/currentweather/current_weather_header.dart';
import 'package:weather_app/ui/forecast/forecast_item.dart';
import 'package:weather_app/ui/forecast/forecast_widget.dart';
import 'package:weather_app/utils/utils.dart';

import 'data/current_weather_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWeatherModel =
        ScopedModel.of<CurrentWeatherModel>(context, rebuildOnChange: true);
    var forecastWeatherModel =
        ScopedModel.of<ForecastWeatherModel>(context, rebuildOnChange: true);

    getCurrentTimeDate(currentWeatherModel.getCurrentWeatherTimestamp());
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              CurrentWeatherHeader(
                city: currentWeatherModel.getCurrentWeatherCity(),
                // TODO: use real data formatted
                date: getCurrentTimeDate(currentWeatherModel.getCurrentWeatherTimestamp()),
                hour: getCurrentTimeHours(currentWeatherModel.getCurrentWeatherTimestamp()),
              ),
              CurrentWeatherContent(
                iconAsset: currentWeatherModel.getCurrentWeatherIcon(),
                temperature: currentWeatherModel.getCurrentTemperature(),
                description: currentWeatherModel.getCurrentWeatherDescription(),
                pressure: currentWeatherModel.getCurrentWeatherPressure(),
                humidity: currentWeatherModel.getCurrentWeatherHumidity(),
                windSpeed: currentWeatherModel.getCurrentWeatherWindSpeed(),
              ),
              ForecastWidget(mapForecastToForecastItems(forecastWeatherModel)),
            ],
          ),
        ));
  }
}

List<ForecastItem> mapForecastToForecastItems(ForecastWeatherModel model) {
  var forecasts = model.getForecasts();
  var forecastItems = List<ForecastItem>();
  forecasts.forEach((forecastDay) {
    ForecastItem item = ForecastItem(
      day: getFormattedDayOfWeek(getDayOfWeek(model.getForecastTimeStamp(forecastDay))),
      minTemperature: model.getForecastMinTemperature(forecastDay),
      maxTemperature: model.getForecastMaxTemperature(forecastDay),
      iconId: model.getForecastIcon(forecastDay),
    );
    forecastItems.add(item);
  });
  return forecastItems;
}
