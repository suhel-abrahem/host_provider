// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      acceptLanguage: json['acceptLanguage'] as String? ?? "",
      authToken: json['authToken'] as String? ?? "",
      id: json['id'] as String? ?? "",
      password: json['password'] as String? ?? "",
      profile: json['profile'] == null
          ? const SetProfileModel()
          : SetProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'acceptLanguage': instance.acceptLanguage,
      'authToken': instance.authToken,
      'id': instance.id,
      'password': instance.password,
      'profile': instance.profile,
    };
