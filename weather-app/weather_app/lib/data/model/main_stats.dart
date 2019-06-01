import 'package:json_annotation/json_annotation.dart';

part 'main_stats.g.dart';

@JsonSerializable()
class MainStats {

  @JsonKey(name: "temp")
  double temperature;

  @JsonKey(name: "temp_min")
  double minTemperature;

  @JsonKey(name: "temp_max")
  double maxTemperature;

  MainStats(this.temperature, this.minTemperature, this.maxTemperature);

  factory MainStats.fromJson(Map<String, dynamic> json) =>
      _$MainStatsFromJson(json);
}
