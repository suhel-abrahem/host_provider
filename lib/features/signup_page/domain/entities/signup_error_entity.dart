import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_error_entity.g.dart';
part 'signup_error_entity.freezed.dart';

@freezed
abstract class SignupErrorEntity with _$SignupErrorEntity {
  const factory SignupErrorEntity({
    @Default([]) List? phone,
    @Default([]) List? email,
    @Default([]) List? password,
  }) = _SignupErrorEntity;
  factory SignupErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupErrorEntityFromJson(json);
}
