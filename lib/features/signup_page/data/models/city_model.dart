import 'package:freezed_annotation/freezed_annotation.dart';
part 'city_model.g.dart';
part 'city_model.freezed.dart';

@freezed
abstract class CityModel with _$CityModel {
  const factory CityModel({
    @Default(1) int? country_id,
    @Default(null) int? per_page,
    @Default(null) int? page,
    @Default("") String? acceptLanguage,
    @Default(false) bool? canAccessLocation,
  }) = _CityModel;
  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
