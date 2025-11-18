import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_model.freezed.dart';
part 'language_model.g.dart';

@freezed
abstract class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    @Default('') String? auth,
    @Default('') String? acceptLanguage,
    @Default([]) List? languages,
  }) = _LanguageModel;
  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
