// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) => _TokenEntity(
  access_token: json['access_token'] as String? ?? "",
  refresh_token: json['refresh_token'] as String? ?? "",
  token_type: json['token_type'] as String? ?? "",
  expires_in: (json['expires_in'] as num?)?.toInt() ?? 0,
  created_in: json['created_in'] as String? ?? "",
);

Map<String, dynamic> _$TokenEntityToJson(_TokenEntity instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'created_in': instance.created_in,
    };
