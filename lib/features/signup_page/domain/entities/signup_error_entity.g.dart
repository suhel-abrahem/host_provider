// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupErrorEntity _$SignupErrorEntityFromJson(Map<String, dynamic> json) =>
    _SignupErrorEntity(
      phone: json['phone'] as List<dynamic>? ?? const [],
      email: json['email'] as List<dynamic>? ?? const [],
      password: json['password'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$SignupErrorEntityToJson(_SignupErrorEntity instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
    };
