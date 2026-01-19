// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpModel _$VerifyOtpModelFromJson(Map<String, dynamic> json) =>
    _VerifyOtpModel(
      otp: json['otp'] as String? ?? "",
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      reset_via: json['reset_via'] as String? ?? "",
    );

Map<String, dynamic> _$VerifyOtpModelToJson(_VerifyOtpModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'user_id': instance.user_id,
      'acceptLanguage': instance.acceptLanguage,
      'reset_via': instance.reset_via,
    };
