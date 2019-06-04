import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils.dart';

class ForecastItem extends StatelessWidget {
  final String day;
  final String iconId;
  final int minTemperature;
  final int maxTemperature;

  const ForecastItem(
    this.day,
    this.iconId,
    this.minTemperature,
    this.maxTemperature,
  )   : assert(day != null),
        assert(iconId != null),
        assert(minTemperature != null),
        assert(maxTemperature != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(day),
        // TODO: add padding in between or some box/spacer
        Container(
            height: 40,
            width: 40,
            child: Image.asset(
                getWeatherIcon(iconId) ?? 'assets/ic-weather-unknown')),
        Text("$maxTemperature/$minTemperature")
      ],
    );
  }
}
