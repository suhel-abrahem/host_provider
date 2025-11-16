// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpModel _$OtpModelFromJson(Map<String, dynamic> json) => _OtpModel(
  userId: (json['userId'] as num?)?.toInt() ?? 0,
  otp: json['otp'] as String? ?? "",
  verifyMethod: json['verifyMethod'] as String? ?? "",
);

Map<String, dynamic> _$OtpModelToJson(_OtpModel instance) => <String, dynamic>{
  'userId': instance.userId,
  'otp': instance.otp,
  'verifyMethod': instance.verifyMethod,
};
