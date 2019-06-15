import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/model/common/weather.dart';
import 'package:weather_app/data/model/forecastweather/temperature.dart';

part 'forecast_day.g.dart';

@JsonSerializable()
class ForecastDay {
  @JsonKey(name: "dt")
  final int timestamp;

  @JsonKey(name: "temp")
  final Temperature temperature;

  final List<Weather> weather;

  ForecastDay(this.timestamp, this.temperature, this.weather)
      : assert(timestamp != null),
        assert(temperature != null),
        assert(weather != null);

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}
