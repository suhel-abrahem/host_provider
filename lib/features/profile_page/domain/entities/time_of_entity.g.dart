// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_of_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimeOfEntity _$TimeOfEntityFromJson(Map<String, dynamic> json) =>
    _TimeOfEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      provider_id: (json['provider_id'] as num?)?.toInt() ?? 0,
      date: json['date'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      start_time: json['start_time'] as String? ?? "",
      end_time: json['end_time'] as String? ?? "",
      is_full_day: json['is_full_day'] as bool? ?? false,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$TimeOfEntityToJson(_TimeOfEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.provider_id,
      'date': instance.date,
      'reason': instance.reason,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'is_full_day': instance.is_full_day,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
