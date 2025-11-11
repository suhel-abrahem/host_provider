// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_working_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetWorkingHoursModel _$SetWorkingHoursModelFromJson(
  Map<String, dynamic> json,
) => _SetWorkingHoursModel(
  provider_id: (json['provider_id'] as num?)?.toInt() ?? 0,
  day_of_week: (json['day_of_week'] as num?)?.toInt() ?? 0,
  start_time: json['start_time'] as String? ?? "",
  end_time: json['end_time'] as String? ?? "",
  is_available: json['is_available'] as bool? ?? false,
);

Map<String, dynamic> _$SetWorkingHoursModelToJson(
  _SetWorkingHoursModel instance,
) => <String, dynamic>{
  'provider_id': instance.provider_id,
  'day_of_week': instance.day_of_week,
  'start_time': instance.start_time,
  'end_time': instance.end_time,
  'is_available': instance.is_available,
};
