part of 'get_profile_bloc.dart';

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.initial() = GetProfileStateInitial;
  const factory GetProfileState.loading() = GetProfileStateLoading;
  const factory GetProfileState.loaded({
    required ProfileEntity? profileEntity,
  }) = GetProfileStateLoaded;
  const factory GetProfileState.error({String? message}) = GetProfileStateError;
  const factory GetProfileState.noInternet() = GetProfileStateNoInternet;
  const factory GetProfileState.noData() = GetProfileStateNoData;
  const factory GetProfileState.unauthorized() = GetProfileStateUnauthorized;
  const factory GetProfileState.loggedOut() = GetProfileStateLoggedOut;
  const factory GetProfileState.logoutError({String? message}) =
      GetProfileStateLogoutError;

  const factory GetProfileState.updated({
    required ProfileEntity? profileEntity,
  }) = GetProfileStateUpdated;
  const factory GetProfileState.updateError({String? message}) =
      GetProfileStateUpdateError;
}
