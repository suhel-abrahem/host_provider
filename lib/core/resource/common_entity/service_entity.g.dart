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
      acceptedLanguage: json['acceptedLanguage'] as String? ?? "",
      price: (json['price'] as num?)?.toInt() ?? 0,
      notes: json['notes'] as String? ?? "",
      is_active: json['is_active'] as bool? ?? false,
      image: json['image'] as String? ?? "",
      category_id: (json['category_id'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
      serviceErrorEntity: json['serviceErrorEntity'] == null
          ? const ServiceErrorEntity()
          : ServiceErrorEntity.fromJson(
              json['serviceErrorEntity'] as Map<String, dynamic>,
            ),
      category: json['category'] as Map<String, dynamic>? ?? const {},
      service: json['service'] as Map<String, dynamic>? ?? const {},
      provider: json['provider'] as Map<String, dynamic>? ?? const {},
      duration_minutes: (json['duration_minutes'] as num?)?.toInt() ?? 0,
      buffer_minutes: (json['buffer_minutes'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ServiceEntityToJson(_ServiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'service_id': instance.service_id,
      'name': instance.name,
      'acceptedLanguage': instance.acceptedLanguage,
      'price': instance.price,
      'notes': instance.notes,
      'is_active': instance.is_active,
      'image': instance.image,
      'category_id': instance.category_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'serviceErrorEntity': instance.serviceErrorEntity,
      'category': instance.category,
      'service': instance.service,
      'provider': instance.provider,
      'duration_minutes': instance.duration_minutes,
      'buffer_minutes': instance.buffer_minutes,
    };
