// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastWeatherResponse _$ForecastWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return ForecastWeatherResponse((json['list'] as List)
      ?.map((e) =>
          e == null ? null : ForecastDay.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$ForecastWeatherResponseToJson(
        ForecastWeatherResponse instance) =>
    <String, dynamic>{'list': instance.forecasts};
