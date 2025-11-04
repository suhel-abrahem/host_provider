// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetServiceModel _$GetServiceModelFromJson(Map<String, dynamic> json) =>
    _GetServiceModel(
      Authorization: json['Authorization'] as String? ?? "",
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      category_id: (json['category_id'] as num?)?.toInt() ?? null,
      service_id: (json['service_id'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$GetServiceModelToJson(_GetServiceModel instance) =>
    <String, dynamic>{
      'Authorization': instance.Authorization,
      'acceptLanguage': instance.acceptLanguage,
      'category_id': instance.category_id,
      'service_id': instance.service_id,
    };
