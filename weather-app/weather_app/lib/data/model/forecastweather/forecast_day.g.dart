// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return ForecastDay(
      json['dt'] as int,
      json['temp'] == null
          ? null
          : Temperature.fromJson(json['temp'] as Map<String, dynamic>),
      (json['weather'] as List)
          ?.map((e) =>
              e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastDayToJson(ForecastDay instance) =>
    <String, dynamic>{
      'dt': instance.timestamp,
      'temp': instance.temperature,
      'weather': instance.weather
    };
