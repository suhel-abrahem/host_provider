// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingHoursEntity _$WorkingHoursEntityFromJson(Map<String, dynamic> json) =>
    _WorkingHoursEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      provider_id: (json['provider_id'] as num?)?.toInt() ?? 0,
      day_of_week: (json['day_of_week'] as num?)?.toInt() ?? 0,
      day_name: json['day_name'] as String? ?? "",
      start_time: json['start_time'] as String? ?? "",
      end_time: json['end_time'] as String? ?? "",
      is_available: json['is_available'] as bool? ?? false,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$WorkingHoursEntityToJson(_WorkingHoursEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.provider_id,
      'day_of_week': instance.day_of_week,
      'day_name': instance.day_name,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'is_available': instance.is_available,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
