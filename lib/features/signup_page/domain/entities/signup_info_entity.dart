import 'package:freezed_annotation/freezed_annotation.dart';
import 'otp_entity.dart';
import 'signup_entity.dart';

import 'signup_error_entity.dart';
part 'signup_info_entity.g.dart';
part 'signup_info_entity.freezed.dart';

@freezed
abstract class SignupInfoEntity with _$SignupInfoEntity {
  const factory SignupInfoEntity({
    @Default(SignupEntity()) SignupEntity? signupEntity,
    @Default(OtpEntity()) OtpEntity? otpEntity,
    @Default("") String? email,
    @Default("") String? phoneNumber,
    @Default(SignupErrorEntity()) SignupErrorEntity? signup_error_entity,
  }) = _SignupInfoEntity;
  factory SignupInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupInfoEntityFromJson(json);
}
