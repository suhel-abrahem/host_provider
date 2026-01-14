// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginStateModel _$LoginStateModelFromJson(Map<String, dynamic> json) =>
    _LoginStateModel(
      password: json['password'] as String? ?? "",
      login: json['login'] as String? ?? "",
      token: json['token'] as String? ?? "",
      otp: json['otp'] as String? ?? "",
    );

Map<String, dynamic> _$LoginStateModelToJson(_LoginStateModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'login': instance.login,
      'token': instance.token,
      'otp': instance.otp,
    };
