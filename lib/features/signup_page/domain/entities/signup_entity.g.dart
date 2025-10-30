// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupEntity _$SignupEntityFromJson(Map<String, dynamic> json) =>
    _SignupEntity(
      message: json['message'] as String? ?? "",
      user_id: json['user_id'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$SignupEntityToJson(_SignupEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user_id': instance.user_id,
      'email': instance.email,
    };
