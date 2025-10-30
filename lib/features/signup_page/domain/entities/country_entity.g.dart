// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryEntity _$CountryEntityFromJson(Map<String, dynamic> json) =>
    _CountryEntity(
      id: (json['id'] as num?)?.toInt() ?? 1,
      name: json['name'] as String? ?? "",
      is_active: json['is_active'] as bool? ?? false,
      cities_count: (json['cities_count'] as num?)?.toInt() ?? 0,
      created_at: json['created_at'] as String? ?? "",
      updated_at: json['updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$CountryEntityToJson(_CountryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.is_active,
      'cities_count': instance.cities_count,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
