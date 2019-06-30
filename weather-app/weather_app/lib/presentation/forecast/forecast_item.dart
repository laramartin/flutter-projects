import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils.dart';

class ForecastItem extends StatelessWidget {
  final String day;
  final String iconId;
  final int minTemperature;
  final int maxTemperature;

  const ForecastItem({
    @required this.day,
    @required this.iconId,
    @required this.minTemperature,
    @required this.maxTemperature,
  })  : assert(day != null),
        assert(iconId != null),
        assert(minTemperature != null),
        assert(maxTemperature != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(day),
        SizedBox(height: 8),
        Container(
            height: 40,
            width: 40,
            child: Image.asset(
                getWeatherIcon(iconId) ?? 'assets/ic-weather-unknown')),
        SizedBox(height: 8),
        Text("$maxTemperature/$minTemperature")
      ],
    );
  }
}
