import 'package:freezed_annotation/freezed_annotation.dart';
part 'provider_entity.freezed.dart';
part 'provider_entity.g.dart';

@freezed
abstract class ProviderEntity with _$ProviderEntity {
  const factory ProviderEntity({
    @Default(0) int? id,
    @Default("") String? name,
    @Default("") String? email,
    @Default("") String? phone,
    @Default("") String? image,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _ProviderEntity;
  factory ProviderEntity.fromJson(Map<String, dynamic> json) =>
      _$ProviderEntityFromJson(json);
}
