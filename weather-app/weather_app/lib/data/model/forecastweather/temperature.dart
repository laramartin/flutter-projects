import 'package:json_annotation/json_annotation.dart';

part 'temperature.g.dart';

@JsonSerializable()
class Temperature {
  @JsonKey(name: "min")
  final double minTemperature;

  @JsonKey(name: "max")
  final double maxTemperature;

  Temperature(this.minTemperature, this.maxTemperature)
      : assert(minTemperature != null),
        assert(maxTemperature != null);

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
