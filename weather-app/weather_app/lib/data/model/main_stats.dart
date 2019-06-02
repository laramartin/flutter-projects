import 'package:json_annotation/json_annotation.dart';

part 'main_stats.g.dart';

@JsonSerializable()
class MainStats {
  @JsonKey(name: "temp")
  final double temperature;

  @JsonKey(name: "temp_min")
  final double minTemperature;

  @JsonKey(name: "temp_max")
  final double maxTemperature;

  final int pressure;

  final int humidity;

  MainStats(
    this.temperature,
    this.minTemperature,
    this.maxTemperature,
    this.pressure,
    this.humidity,
  );

  factory MainStats.fromJson(Map<String, dynamic> json) =>
      _$MainStatsFromJson(json);
}
