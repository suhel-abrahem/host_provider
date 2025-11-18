// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    _LanguageModel(
      auth: json['auth'] as String? ?? '',
      acceptLanguage: json['acceptLanguage'] as String? ?? '',
      languages: json['languages'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$LanguageModelToJson(_LanguageModel instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'acceptLanguage': instance.acceptLanguage,
      'languages': instance.languages,
    };
