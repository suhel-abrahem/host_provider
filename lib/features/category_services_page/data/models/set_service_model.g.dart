// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetServiceModel _$SetServiceModelFromJson(Map<String, dynamic> json) =>
    _SetServiceModel(
      service_id: (json['service_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      price: json['price'] as String? ?? "",
      notes: json['notes'] as String? ?? "",
      duration_minutes: json['duration_minutes'] as String? ?? "",
      buffer_minutes: json['buffer_minutes'] as String? ?? "",
    );

Map<String, dynamic> _$SetServiceModelToJson(_SetServiceModel instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'name': instance.name,
      'price': instance.price,
      'notes': instance.notes,
      'duration_minutes': instance.duration_minutes,
      'buffer_minutes': instance.buffer_minutes,
    };
