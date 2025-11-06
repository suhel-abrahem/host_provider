// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceErrorEntity _$ServiceErrorEntityFromJson(Map<String, dynamic> json) =>
    _ServiceErrorEntity(
      service_id: json['service_id'] as List<dynamic>? ?? const [],
      price: json['price'] as List<dynamic>? ?? const [],
      is_active: json['is_active'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$ServiceErrorEntityToJson(_ServiceErrorEntity instance) =>
    <String, dynamic>{
      'service_id': instance.service_id,
      'price': instance.price,
      'is_active': instance.is_active,
    };
