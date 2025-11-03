// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupInfoEntity _$SignupInfoEntityFromJson(Map<String, dynamic> json) =>
    _SignupInfoEntity(
      signupEntity: json['signupEntity'] == null
          ? const SignupEntity()
          : SignupEntity.fromJson(json['signupEntity'] as Map<String, dynamic>),
      otpEntity: json['otpEntity'] == null
          ? const OtpEntity()
          : OtpEntity.fromJson(json['otpEntity'] as Map<String, dynamic>),
      email: json['email'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      signup_error_entity: json['signup_error_entity'] == null
          ? const SignupErrorEntity()
          : SignupErrorEntity.fromJson(
              json['signup_error_entity'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SignupInfoEntityToJson(_SignupInfoEntity instance) =>
    <String, dynamic>{
      'signupEntity': instance.signupEntity,
      'otpEntity': instance.otpEntity,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'signup_error_entity': instance.signup_error_entity,
    };
