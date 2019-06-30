import 'package:flutter/material.dart';
import 'package:weather_app/presentation/forecast/forecast_item.dart';

class ForecastWidget extends StatelessWidget {
  final List<ForecastItem> forecast;

  ForecastWidget(this.forecast) : assert(forecast != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ...forecast
        ],
      ),
    );
  }
}
