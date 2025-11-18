part of 'languges_bloc.dart';

@freezed
class LangugesEvent with _$LangugesEvent {
  const factory LangugesEvent.started() = LangugesStarted;
  const factory LangugesEvent.getLanguages({
    required LanguageModel? languageModel,
  }) = LangugesGetLanguages;
  const factory LangugesEvent.updateLanguage({
    required LanguageModel? languageModel,
  }) = LangugesUpdateLanguage;
}
