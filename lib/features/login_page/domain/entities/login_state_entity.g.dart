// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginStateEntity _$LoginStateEntityFromJson(Map<String, dynamic> json) =>
    _LoginStateEntity(
      token: json['token'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      userName: json['userName'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      profileImage: json['profileImage'] as String? ?? "",
      tokenExpireDate: json['tokenExpireDate'] as String? ?? "",
      refreshTokenExpireDate: json['refreshTokenExpireDate'] as String? ?? "",
      isEmailVerified: json['isEmailVerified'] as bool? ?? false,
      isPhoneVerified: json['isPhoneVerified'] as bool? ?? false,
      loginStateEnum:
          $enumDecodeNullable(
            _$LoginStateEnumEnumMap,
            json['loginStateEnum'],
          ) ??
          LoginStateEnum.unlogined,
    );

Map<String, dynamic> _$LoginStateEntityToJson(_LoginStateEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'profileImage': instance.profileImage,
      'tokenExpireDate': instance.tokenExpireDate,
      'refreshTokenExpireDate': instance.refreshTokenExpireDate,
      'isEmailVerified': instance.isEmailVerified,
      'isPhoneVerified': instance.isPhoneVerified,
      'loginStateEnum': _$LoginStateEnumEnumMap[instance.loginStateEnum],
    };

const _$LoginStateEnumEnumMap = {
  LoginStateEnum.logined: 'logined',
  LoginStateEnum.unlogined: 'unlogined',
  LoginStateEnum.quest: 'quest',
};
