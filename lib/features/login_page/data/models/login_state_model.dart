import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_model.freezed.dart';
part 'login_state_model.g.dart';

@freezed
abstract class LoginStateModel with _$LoginStateModel {
  const factory LoginStateModel({
    @Default("") String? password,
    @Default("") String? login,

    @Default("") String? token,
    @Default("") String? otp,
  }) = _LoginStateModel;

  factory LoginStateModel.fromJson(Map<String, dynamic> json) =>
      _$LoginStateModelFromJson(json);
}
