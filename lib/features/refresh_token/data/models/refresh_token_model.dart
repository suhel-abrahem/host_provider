import 'package:freezed_annotation/freezed_annotation.dart';
part 'refresh_token_model.g.dart';
part 'refresh_token_model.freezed.dart';

@freezed
abstract class RefreshTokenModel with _$RefreshTokenModel {
  const factory RefreshTokenModel({
    @Default("") String? token,
    @Default("") String? refresh_token,
    @Default("") String? created_at,
    @Default(0) int? duration,
  }) = _RefreshTokenModel;
  factory RefreshTokenModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenModelFromJson(json);
}
