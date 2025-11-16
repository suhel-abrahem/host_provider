// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) =>
    _ServiceModel(
      service_id: (json['service_id'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      is_active: json['is_active'] as bool? ?? false,
      price: (json['price'] as num?)?.toInt() ?? 0,
      notes: json['notes'] as String? ?? "",
      duration_minutes: (json['duration_minutes'] as num?)?.toInt() ?? 0,
      buffer_minutes: (json['buffer_minutes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ServiceModelToJson(_ServiceModel instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'id': instance.id,
      'is_active': instance.is_active,
      'price': instance.price,
      'notes': instance.notes,
      'duration_minutes': instance.duration_minutes,
      'buffer_minutes': instance.buffer_minutes,
    };
