import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/login_state_enum.dart';
part 'login_state_entity.freezed.dart';
part 'login_state_entity.g.dart';

@freezed
abstract class LoginStateEntity with _$LoginStateEntity {
  const factory LoginStateEntity({
    @Default("") String? token,
    @Default("") String? refreshToken,
    @Default("") String? userId,
    @Default("") String? userName,
    @Default("") String? email,
    @Default("") String? phone,
    @Default("") String? profileImage,
    @Default("") String? tokenExpireDate,
    @Default("") String? refreshTokenExpireDate,
    @Default(false) bool? isEmailVerified,
    @Default(false) bool? isPhoneVerified,
    @Default(LoginStateEnum.unlogined) LoginStateEnum? loginStateEnum,
  }) = _LoginStateEntity;

  factory LoginStateEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginStateEntityFromJson(json);
}
