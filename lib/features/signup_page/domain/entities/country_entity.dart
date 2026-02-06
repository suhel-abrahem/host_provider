import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';
part 'country_entity.g.dart';

@freezed
abstract class CountryEntity with _$CountryEntity {
  const factory CountryEntity({
    @Default(1) int? id,
    @Default("") String? name,
    @Default(false) bool? is_active,
    @Default(0) int? cities_count,
    @Default("") String? created_at,
    @Default("") String? updated_at,
  }) = _CountryEntity;
  factory CountryEntity.fromJson(Map<String, dynamic> json) =>
      _$CountryEntityFromJson(json);
}
