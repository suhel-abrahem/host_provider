// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestResetPasswordModel _$RequestResetPasswordModelFromJson(
  Map<String, dynamic> json,
) => _RequestResetPasswordModel(
  identifier: json['identifier'] as String? ?? "",
  restVia: json['restVia'] as String? ?? "",
  acceptLanguage: json['acceptLanguage'] as String? ?? "",
);

Map<String, dynamic> _$RequestResetPasswordModelToJson(
  _RequestResetPasswordModel instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'restVia': instance.restVia,
  'acceptLanguage': instance.acceptLanguage,
};
