// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetServiceModel _$SetServiceModelFromJson(Map<String, dynamic> json) =>
    _SetServiceModel(
      serviceModel: json['serviceModel'] == null
          ? const ServiceModel()
          : ServiceModel.fromJson(json['serviceModel'] as Map<String, dynamic>),
      acceptedLanguage: json['acceptedLanguage'] as String? ?? "",
      authorization: json['authorization'] as String? ?? "",
    );

Map<String, dynamic> _$SetServiceModelToJson(_SetServiceModel instance) =>
    <String, dynamic>{
      'serviceModel': instance.serviceModel,
      'acceptedLanguage': instance.acceptedLanguage,
      'authorization': instance.authorization,
    };
