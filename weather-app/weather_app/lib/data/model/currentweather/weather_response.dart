import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/model/currentweather/weather.dart';
import 'package:weather_app/data/model/currentweather/wind.dart';

import 'package:weather_app/data/model/currentweather/main_stats.dart';

part 'package:weather_app/data/model/currentweather/weather_response.g.dart';

@JsonSerializable()
class CurrentWeatherResponse {
  @JsonKey(name: "cod")
  final int code;

  @JsonKey(name: "name")
  final String city;

  @JsonKey(name: "main")
  final MainStats mainStats;

  final List<Weather> weather;

  @JsonKey(name: "dt")
  final int timestamp;

  final Wind wind;

  CurrentWeatherResponse(
    this.code,
    this.city,
    this.mainStats,
    this.weather,
    this.timestamp,
    this.wind,
  );

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);
}
