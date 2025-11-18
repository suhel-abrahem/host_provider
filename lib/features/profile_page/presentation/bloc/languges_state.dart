part of 'languges_bloc.dart';

@freezed
class LangugesState with _$LangugesState {
  const factory LangugesState.initial() = LangugesStateInitial;
  const factory LangugesState.loading() = LangugesStateLoading;
  const factory LangugesState.loaded({List<LanguageEntity?>? languages}) =
      LangugesStateLoaded;
  const factory LangugesState.error({required String message}) =
      LangugesStateError;
  const factory LangugesState.noData() = LangugesStateNoData;
  const factory LangugesState.noInternet() = LangugesStateNoInternet;
  const factory LangugesState.unauthenticated() = LangugesStateUnauthenticated;
  const factory LangugesState.languageSetSuccess() =
      LangugesStateLanguageSetSuccess;
}
