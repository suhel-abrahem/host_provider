// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordModel _$ResetPasswordModelFromJson(Map<String, dynamic> json) =>
    _ResetPasswordModel(
      resetToken: json['resetToken'] as String? ?? "",
      password: json['password'] as String? ?? "",
      confirmPassword: json['confirmPassword'] as String? ?? "",
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
    );

Map<String, dynamic> _$ResetPasswordModelToJson(_ResetPasswordModel instance) =>
    <String, dynamic>{
      'resetToken': instance.resetToken,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'acceptLanguage': instance.acceptLanguage,
    };
