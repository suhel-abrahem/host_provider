// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) =>
    _ServiceEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      service_id: (json['service_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      price: json['price'] as String? ?? "",
      notes: json['notes'] as String? ?? "",
      is_active: json['is_active'] as bool? ?? false,
      image: json['image'] as String? ?? "",
      category_id: (json['category_id'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
      category: json['category'] as Map<String, dynamic>? ?? const {},
      service: json['service'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ServiceEntityToJson(_ServiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'service_id': instance.service_id,
      'name': instance.name,
      'price': instance.price,
      'notes': instance.notes,
      'is_active': instance.is_active,
      'image': instance.image,
      'category_id': instance.category_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'category': instance.category,
      'service': instance.service,
    };
