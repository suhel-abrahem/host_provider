// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'resend_reset_password_otp_model.freezed.dart';
part 'resend_reset_password_otp_model.g.dart';

@freezed
abstract class ResendResetPasswordOtpModel with _$ResendResetPasswordOtpModel {
  const factory ResendResetPasswordOtpModel({
    @Default("") String? token,
    @Default("") String? acceptLanguage,
    @Default(0) int? user_id,
    @Default("") String? reset_via,
  }) = _ResendResetPasswordOtpModel;
  factory ResendResetPasswordOtpModel.fromJson(Map<String, dynamic> json) =>
      _$ResendResetPasswordOtpModelFromJson(json);
}
