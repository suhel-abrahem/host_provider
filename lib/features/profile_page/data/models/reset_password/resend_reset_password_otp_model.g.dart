// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_reset_password_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResendResetPasswordOtpModel _$ResendResetPasswordOtpModelFromJson(
  Map<String, dynamic> json,
) => _ResendResetPasswordOtpModel(
  token: json['token'] as String? ?? "",
  acceptLanguage: json['acceptLanguage'] as String? ?? "",
  user_id: (json['user_id'] as num?)?.toInt() ?? 0,
  reset_via: json['reset_via'] as String? ?? "",
);

Map<String, dynamic> _$ResendResetPasswordOtpModelToJson(
  _ResendResetPasswordOtpModel instance,
) => <String, dynamic>{
  'token': instance.token,
  'acceptLanguage': instance.acceptLanguage,
  'user_id': instance.user_id,
  'reset_via': instance.reset_via,
};
