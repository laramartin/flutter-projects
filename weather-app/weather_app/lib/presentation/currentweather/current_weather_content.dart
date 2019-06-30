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
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(getWeatherIcon(iconAsset) ?? 'assets/ic-weather-unknown'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    temperature.toString(),
                    style: TypeScale.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Text(
                      "°C",
                      style: TypeScale.headline6,
                    ),
                  )
                ],
              ),
              SizedBox(height: 16),
              Text(
                "${description[0].toUpperCase()}${description.substring(1)}",
                style:
                    TypeScale.headline6.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Pressure ${pressure.toString()} hPa",
                style: TypeScale.body2,
              ),
              SizedBox(height: 8),
              Text(
                "Humidity ${humidity.toString()}%",
                style: TypeScale.body2,
              ),
              SizedBox(height: 8),
              Text(
                "Wind ${windSpeed.toString()} m/s",
                style: TypeScale.body2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
