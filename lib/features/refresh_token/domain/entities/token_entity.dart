import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_entity.g.dart';
part 'token_entity.freezed.dart';

@freezed
abstract class TokenEntity with _$TokenEntity {
  const factory TokenEntity({
    @Default("") String? access_token,
    @Default("") String? refresh_token,
    @Default("") String? token_type,
    @Default(0) int? expires_in,
    @Default("") String? created_in,
  }) = _TokenEntity;
  factory TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenEntityFromJson(json);
}
