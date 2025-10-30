// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityEntity _$CityEntityFromJson(Map<String, dynamic> json) => _CityEntity(
  id: (json['id'] as num?)?.toInt() ?? 1,
  name: json['name'] as String? ?? "",
  is_active: json['is_active'] as bool? ?? false,
  cities_count: (json['cities_count'] as num?)?.toInt() ?? 0,
  created_at: json['created_at'] as String? ?? "",
  updated_at: json['updated_at'] as String? ?? "",
  country: json['country'] == null
      ? const CountryEntity()
      : CountryEntity.fromJson(json['country'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityEntityToJson(_CityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.is_active,
      'cities_count': instance.cities_count,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'country': instance.country,
    };
