// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return CurrentWeatherResponse(
      json['cod'] as int,
      json['name'] as String,
      json['main'] == null
          ? null
          : MainStats.fromJson(json['main'] as Map<String, dynamic>),
      (json['weather'] as List)
          ?.map((e) =>
              e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['dt'] as int,
      json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CurrentWeatherResponseToJson(
        CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'cod': instance.code,
      'name': instance.city,
      'main': instance.mainStats,
      'weather': instance.weather,
      'dt': instance.timestamp,
      'wind': instance.wind
    };
