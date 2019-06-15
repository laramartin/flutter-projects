import 'package:json_annotation/json_annotation.dart';

part 'package:weather_app/data/model/currentweather/wind.g.dart';

@JsonSerializable()
class Wind {
  final double speed;

  Wind(this.speed);

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
