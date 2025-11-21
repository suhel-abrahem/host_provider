// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      per_page: (json['per_page'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      canAccessLocation: json['canAccessLocation'] as bool? ?? false,
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'per_page': instance.per_page,
      'page': instance.page,
      'acceptLanguage': instance.acceptLanguage,
      'canAccessLocation': instance.canAccessLocation,
    };
