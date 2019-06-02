import 'package:flutter/material.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/utils/utils.dart';

class CurrentWeatherContent extends StatelessWidget {
  final String iconAsset;
  final int temperature;
  final String description;
  final int pressure;
  final int humidity;
  final double windSpeed;

  const CurrentWeatherContent({
    @required this.iconAsset,
    @required this.temperature,
    @required this.description,
    @required this.pressure,
    @required this.humidity,
    @required this.windSpeed,
  })  : assert(iconAsset != null),
        assert(temperature != null),
        assert(description != null),
        assert(pressure != null),
        assert(humidity != null),
        assert(windSpeed != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(getWeatherIcon(iconAsset) ?? 'assets/ic-weather-unknown'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                temperature.toString(),
                style: TypeScale.headline1,
              ),
              Text(
                description,
                style: TypeScale.headline6,
              ),
              Text(
                pressure.toString(),
                style: TypeScale.body2,
              ),
              Text(
                humidity.toString(),
                style: TypeScale.body2,
              ),
              Text(
                windSpeed.toString(),
                style: TypeScale.body2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
