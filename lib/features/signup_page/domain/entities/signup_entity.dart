import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_entity.freezed.dart';
part 'signup_entity.g.dart';

@freezed
abstract class SignupEntity with _$SignupEntity {
  const factory SignupEntity({
    @Default("") String? message,
    @Default("") String? user_id,
    @Default("") String? email,
  }) = _SignupEntity;
  factory SignupEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupEntityFromJson(json);
}
