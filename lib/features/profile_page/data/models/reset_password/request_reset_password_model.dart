import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_reset_password_model.freezed.dart';
part 'request_reset_password_model.g.dart';

@freezed
abstract class RequestResetPasswordModel with _$RequestResetPasswordModel {
  const factory RequestResetPasswordModel({
    @Default("") String? identifier,
    @Default("") String? restVia,
    @Default("") String? acceptLanguage,
  }) = _RequestResetPasswordModel;
  factory RequestResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RequestResetPasswordModelFromJson(json);
}
