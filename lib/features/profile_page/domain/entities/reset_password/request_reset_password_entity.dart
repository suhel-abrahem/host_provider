// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_reset_password_entity.freezed.dart';
part 'request_reset_password_entity.g.dart';

@freezed
abstract class RequestResetPasswordEntity with _$RequestResetPasswordEntity {
  const factory RequestResetPasswordEntity({
    @Default("") String? message,
    @Default("") String? sent_via,
    @Default(0) int? user_id,
    @Default(false) bool? otp_sent,
  }) = _RequestResetPasswordEntity;
  factory RequestResetPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$RequestResetPasswordEntityFromJson(json);
}
