// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginStateEntity _$LoginStateEntityFromJson(Map<String, dynamic> json) =>
    _LoginStateEntity(
      access_token: json['access_token'] as String? ?? "",
      refresh_token: json['refresh_token'] as String? ?? "",
      token_type: json['token_type'] as String? ?? "",
      expires_in: (json['expires_in'] as num?)?.toInt() ?? 0,
      user: json['user'] as Map<String, dynamic>? ?? const {},
      created_at: json['created_at'] as String? ?? "",
      loginStateEnum:
          $enumDecodeNullable(
            _$LoginStateEnumEnumMap,
            json['loginStateEnum'],
          ) ??
          LoginStateEnum.unlogined,
    );

Map<String, dynamic> _$LoginStateEntityToJson(_LoginStateEntity instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'user': instance.user,
      'created_at': instance.created_at,
      'loginStateEnum': _$LoginStateEnumEnumMap[instance.loginStateEnum],
    };

const _$LoginStateEnumEnumMap = {
  LoginStateEnum.logined: 'logined',
  LoginStateEnum.unlogined: 'unlogined',
  LoginStateEnum.quest: 'quest',
};
