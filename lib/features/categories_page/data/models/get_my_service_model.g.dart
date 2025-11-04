// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetMyServiceModel _$GetMyServiceModelFromJson(Map<String, dynamic> json) =>
    _GetMyServiceModel(
      Authorization: json['Authorization'] as String? ?? "",
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
    );

Map<String, dynamic> _$GetMyServiceModelToJson(_GetMyServiceModel instance) =>
    <String, dynamic>{
      'Authorization': instance.Authorization,
      'acceptLanguage': instance.acceptLanguage,
    };
