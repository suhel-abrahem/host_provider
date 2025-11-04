part of 'refresh_token_bloc.dart';

@freezed
class RefreshTokenState with _$RefreshTokenState {
  const factory RefreshTokenState.initial() = RefreshTokenStateInitial;
  const factory RefreshTokenState.loading() = RefreshTokenStateLoading;
  const factory RefreshTokenState.got(TokenEntity? tokenEntity) =
      RefreshTokenStateGot;
  const factory RefreshTokenState.error() = RefreshTokenStateError;
  const factory RefreshTokenState.unauthenticated() =
      RefreshTokenStateUnauthenticated;
}
