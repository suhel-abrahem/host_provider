// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) =>
    _CategoryEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      services_count: (json['services_count'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      is_active: json['is_active'] as bool? ?? false,
      icon: json['icon'] as String? ?? "",
      category_id: (json['category_id'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$CategoryEntityToJson(_CategoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'services_count': instance.services_count,
      'name': instance.name,
      'is_active': instance.is_active,
      'icon': instance.icon,
      'category_id': instance.category_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
