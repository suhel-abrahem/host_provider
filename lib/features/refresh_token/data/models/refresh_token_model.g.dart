// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenModel _$RefreshTokenModelFromJson(Map<String, dynamic> json) =>
    _RefreshTokenModel(
      token: json['token'] as String? ?? "",
      refresh_token: json['refresh_token'] as String? ?? "",
      created_at: json['created_at'] as String? ?? "",
      duration: (json['duration'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$RefreshTokenModelToJson(_RefreshTokenModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refresh_token,
      'created_at': instance.created_at,
      'duration': instance.duration,
    };
