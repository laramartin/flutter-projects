import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/model/weather.dart';

import 'main_stats.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class CurrentWeatherResponse {
  @JsonKey(name: "cod")
  final int code;

  @JsonKey(name: "name")
  final String city;

  @JsonKey(name: "main")
  final MainStats mainStats;

  final List<Weather> weather;

  CurrentWeatherResponse(this.code, this.city, this.mainStats, this.weather);

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) => _$CurrentWeatherResponseFromJson(json);
}
