import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
abstract class CountryModel with _$CountryModel {
  const factory CountryModel({
    @Default(null) int? per_page,
    @Default(null) int? page,
    @Default("") String? acceptLanguage,
    @Default(false) bool? canAccessLocation,
  }) = _CountryModel;
  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
