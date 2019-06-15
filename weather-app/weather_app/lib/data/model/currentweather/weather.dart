import 'package:json_annotation/json_annotation.dart';

part 'package:weather_app/data/model/currentweather/weather.g.dart';

@JsonSerializable()
class Weather {

  final String description;

  @JsonKey(name: "icon")
  final String iconId;

  Weather(this.description, this.iconId);

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

}
