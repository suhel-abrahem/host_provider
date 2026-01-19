// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_reset_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestResetPasswordEntity _$RequestResetPasswordEntityFromJson(
  Map<String, dynamic> json,
) => _RequestResetPasswordEntity(
  message: json['message'] as String? ?? "",
  sent_via: json['sent_via'] as String? ?? "",
  user_id: (json['user_id'] as num?)?.toInt() ?? 0,
  otp_sent: json['otp_sent'] as bool? ?? false,
);

Map<String, dynamic> _$RequestResetPasswordEntityToJson(
  _RequestResetPasswordEntity instance,
) => <String, dynamic>{
  'message': instance.message,
  'sent_via': instance.sent_via,
  'user_id': instance.user_id,
  'otp_sent': instance.otp_sent,
};
