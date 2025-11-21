import 'package:freezed_annotation/freezed_annotation.dart';
import 'country_entity.dart';
part 'city_entity.g.dart';
part 'city_entity.freezed.dart';

@freezed
abstract class CityEntity with _$CityEntity {
  const factory CityEntity({
    @Default(1) int? id,
    @Default("") String? name,
    @Default(false) bool? is_active,
    @Default(0) int? cities_count,
    @Default("") String? created_at,
    @Default("") String? updated_at,
    @Default(CountryEntity()) CountryEntity? country,
  }) = _CityEntity;

  factory CityEntity.fromJson(Map<String, dynamic> json) =>
      _$CityEntityFromJson(json);
}
