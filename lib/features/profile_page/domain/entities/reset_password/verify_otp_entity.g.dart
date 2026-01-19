// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpEntity _$VerifyOtpEntityFromJson(Map<String, dynamic> json) =>
    _VerifyOtpEntity(
      otp: json['otp'] as String? ?? "",
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      reset_token: json['reset_token'] as String? ?? "",
    );

Map<String, dynamic> _$VerifyOtpEntityToJson(_VerifyOtpEntity instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'user_id': instance.user_id,
      'acceptLanguage': instance.acceptLanguage,
      'reset_token': instance.reset_token,
    };
