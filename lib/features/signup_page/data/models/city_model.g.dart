// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  country_id: (json['country_id'] as num?)?.toInt() ?? 1,
  per_page: (json['per_page'] as num?)?.toInt() ?? null,
  page: (json['page'] as num?)?.toInt() ?? null,
  acceptLanguage: json['acceptLanguage'] as String? ?? "",
  canAccessLocation: json['canAccessLocation'] as bool? ?? false,
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'country_id': instance.country_id,
      'per_page': instance.per_page,
      'page': instance.page,
      'acceptLanguage': instance.acceptLanguage,
      'canAccessLocation': instance.canAccessLocation,
    };
