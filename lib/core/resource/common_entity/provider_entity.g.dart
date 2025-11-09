// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProviderEntity _$ProviderEntityFromJson(Map<String, dynamic> json) =>
    _ProviderEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      image: json['image'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$ProviderEntityToJson(_ProviderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
