// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LanguageEntity _$LanguageEntityFromJson(Map<String, dynamic> json) =>
    _LanguageEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      language: json['language'] as String? ?? '',
      language_name: json['language_name'] as String? ?? '',
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$LanguageEntityToJson(_LanguageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'language_name': instance.language_name,
      'isSelected': instance.isSelected,
    };
