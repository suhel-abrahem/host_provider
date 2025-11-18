import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_entity.freezed.dart';
part 'language_entity.g.dart';

@freezed
abstract class LanguageEntity with _$LanguageEntity {
  const factory LanguageEntity({
    @Default(0) int? id,
    @Default('') String? language,
    @Default('') String? language_name,
    @Default(false) bool? isSelected,
  }) = _LanguageEntity;
  factory LanguageEntity.fromJson(Map<String, dynamic> json) =>
      _$LanguageEntityFromJson(json);
}
