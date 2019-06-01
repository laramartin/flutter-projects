// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return CurrentWeatherResponse(
      json['cod'] as int,
      json['name'] as String,
      json['main'] == null
          ? null
          : MainStats.fromJson(json['main'] as Map<String, dynamic>));
}

Map<String, dynamic> _$WeatherResponseToJson(CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'cod': instance.code,
      'name': instance.city,
      'main': instance.mainStats
    };
