import 'package:flutter/material.dart';
import 'package:weather_app/utils/styles.dart';

class CurrentWeatherHeader extends StatelessWidget {
  final String city;
  final String date;
  final String hour;

  const CurrentWeatherHeader({
    @required this.city,
    @required this.date,
    @required this.hour,
  })  : assert(city != null),
        assert(date != null),
        assert(hour != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(city, style: TypeScale.headline4.copyWith(fontWeight: FontWeight.bold),),
        SizedBox(height: 16,),
        Text(date, style: TypeScale.body1,),
        SizedBox(height: 8,),
        Text(hour, style: TypeScale.body1,),
      ],
    );
  }
}
