// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_entity.freezed.dart';
part 'verify_otp_entity.g.dart';

@freezed
abstract class VerifyOtpEntity with _$VerifyOtpEntity {
  const factory VerifyOtpEntity({
    @Default("") String? otp,
    @Default(0) int? user_id,
    @Default("") String? acceptLanguage,
    @Default("") String? reset_token,
  }) = _VerifyOtpEntity;
  factory VerifyOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpEntityFromJson(json);
}
