// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpEntity _$OtpEntityFromJson(Map<String, dynamic> json) => _OtpEntity(
  user_id: (json['user_id'] as num?)?.toInt() ?? 0,
  id: (json['id'] as num?)?.toInt() ?? 0,
  otp: (json['otp'] as num?)?.toInt() ?? 0,
  expires_at: json['expires_at'] as String? ?? "",
  used: json['used'] as bool? ?? false,
  updated_at: json['updated_at'] as String? ?? "",
  created_at: json['created_at'] as String? ?? "",
);

Map<String, dynamic> _$OtpEntityToJson(_OtpEntity instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'id': instance.id,
      'otp': instance.otp,
      'expires_at': instance.expires_at,
      'used': instance.used,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
