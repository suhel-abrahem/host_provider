// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_time_off_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetTimeOffModel _$SetTimeOffModelFromJson(Map<String, dynamic> json) =>
    _SetTimeOffModel(
      provider_id: (json['provider_id'] as num?)?.toInt() ?? 0,
      date: json['date'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      is_full_day: json['is_full_day'] as bool? ?? false,
      start_time: json['start_time'] as String? ?? "",
      end_time: json['end_time'] as String? ?? "",
    );

Map<String, dynamic> _$SetTimeOffModelToJson(_SetTimeOffModel instance) =>
    <String, dynamic>{
      'provider_id': instance.provider_id,
      'date': instance.date,
      'reason': instance.reason,
      'is_full_day': instance.is_full_day,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
    };
