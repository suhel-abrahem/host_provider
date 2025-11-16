import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_model.g.dart';
part 'otp_model.freezed.dart';

@freezed
abstract class OtpModel with _$OtpModel {
  const factory OtpModel({
    @Default(0) int? userId,
    @Default("") String? otp,
    @Default("") String? verifyMethod,
  }) = _OtpModel;
  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
