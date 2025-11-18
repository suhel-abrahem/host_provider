// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingTimeModel _$WorkingTimeModelFromJson(Map<String, dynamic> json) =>
    _WorkingTimeModel(
      day_of_week: (json['day_of_week'] as num?)?.toInt() ?? 0,
      start_time: json['start_time'] as String? ?? "",
      end_time: json['end_time'] as String? ?? "",
      is_available: json['is_available'] as bool? ?? false,
    );

Map<String, dynamic> _$WorkingTimeModelToJson(_WorkingTimeModel instance) =>
    <String, dynamic>{
      'day_of_week': instance.day_of_week,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'is_available': instance.is_available,
    };
