import 'package:json_annotation/json_annotation.dart';

import 'main_stats.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: "cod")
  final int code;

  @JsonKey(name: "name")
  final String city;

  @JsonKey(name: "main")
  final MainStats mainStats;

  WeatherResponse(this.code, this.city, this.mainStats);

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}
