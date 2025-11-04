part of 'refresh_token_bloc.dart';

@freezed
class RefreshTokenEvent with _$RefreshTokenEvent {
  const factory RefreshTokenEvent.started() = RefreshTokenEventStarted;
  const factory RefreshTokenEvent.get(RefreshTokenModel? refreshTokenModel) =
      RefreshTokenEventGet;
}
