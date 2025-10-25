// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceEntity _$ServiceEntityFromJson(Map<String, dynamic> json) =>
    _ServiceEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      ar_name: json['ar_name'] as String? ?? "",
      en_name: json['en_name'] as String? ?? "",
      kr_name: json['kr_name'] as String? ?? "",
      is_active: json['is_active'] as bool? ?? false,
      image: json['image'] as String? ?? "",
      category_id: (json['category_id'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$ServiceEntityToJson(_ServiceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ar_name': instance.ar_name,
      'en_name': instance.en_name,
      'kr_name': instance.kr_name,
      'is_active': instance.is_active,
      'image': instance.image,
      'category_id': instance.category_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
