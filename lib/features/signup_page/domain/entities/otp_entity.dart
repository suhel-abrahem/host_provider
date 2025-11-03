import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_entity.g.dart';
part 'otp_entity.freezed.dart';

@freezed
abstract class OtpEntity with _$OtpEntity {
  const factory OtpEntity({
    @Default(0) int? user_id,
    @Default(0) int? id,
    @Default(0) int? otp,
    @Default("") String? expires_at,
    @Default(false) bool? used,
    @Default("") String? updated_at,
    @Default("") String? created_at,
  }) = _OtpEntity;
  factory OtpEntity.fromJson(Map<String, dynamic> json) =>
      _$OtpEntityFromJson(json);
}
