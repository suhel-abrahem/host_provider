import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/login_state_enum.dart';
part 'login_state_entity.freezed.dart';
part 'login_state_entity.g.dart';

@freezed
abstract class LoginStateEntity with _$LoginStateEntity {
  const factory LoginStateEntity({
    @Default("") String? access_token,
    @Default("") String? refresh_token,
    @Default("") String? token_type,
    @Default(0) int? expires_in,
    @Default({}) Map<String, dynamic> user,
    @Default("") String? created_at,
    @Default(LoginStateEnum.unlogined) LoginStateEnum? loginStateEnum,
    @Default(false) bool? isFcmTokenSet,
    @Default("") String? fcmToken,
  }) = _LoginStateEntity;

  factory LoginStateEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginStateEntityFromJson(json);
}
