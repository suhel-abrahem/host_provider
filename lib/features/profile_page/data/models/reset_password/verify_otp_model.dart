// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_model.freezed.dart';
part 'verify_otp_model.g.dart';

@freezed
abstract class VerifyOtpModel with _$VerifyOtpModel {
  const factory VerifyOtpModel({
    @Default("") String? otp,
    @Default(0) int? user_id,
    @Default("") String? acceptLanguage,
    @Default("") String? reset_via,
  }) = _VerifyOtpModel;
  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);
}
