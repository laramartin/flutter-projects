import 'package:json_annotation/json_annotation.dart';
import 'forecast_day.dart';

part 'forecast_weather_response.g.dart';

@JsonSerializable()
class ForecastWeatherResponse {

  @JsonKey(name: "list")
  final List<ForecastDay> forecasts;

  ForecastWeatherResponse(this.forecasts);

  factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherResponseFromJson(json);
}
