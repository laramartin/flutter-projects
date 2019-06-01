// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainStats _$MainStatsFromJson(Map<String, dynamic> json) {
  return MainStats(
      (json['temp'] as num)?.toDouble(),
      (json['temp_min'] as num)?.toDouble(),
      (json['temp_max'] as num)?.toDouble());
}

Map<String, dynamic> _$MainStatsToJson(MainStats instance) => <String, dynamic>{
      'temp': instance.temperature,
      'temp_min': instance.minTemperature,
      'temp_max': instance.maxTemperature
    };
