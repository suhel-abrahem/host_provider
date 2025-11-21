import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_entity.freezed.dart';
part 'signup_entity.g.dart';

@freezed
abstract class SignupEntity with _$SignupEntity {
  const factory SignupEntity({
    @Default("") String? message,
    @Default(0) int? user_id,
    @Default("") String? verify_via,
  }) = _SignupEntity;
  factory SignupEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupEntityFromJson(json);
}
