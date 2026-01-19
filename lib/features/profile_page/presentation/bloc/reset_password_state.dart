part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = ResetPasswordStateInitial;
  const factory ResetPasswordState.loading() = ResetPasswordStateLoading;
  const factory ResetPasswordState.requestResetPasswordSuccess({
    required RequestResetPasswordEntity? requestResetPasswordEntity,
  }) = ResetPasswordStateRequestResetPasswordSuccess;
  const factory ResetPasswordState.verifyOtpSuccess({
    required VerifyOtpEntity? verifyOtpEntity,
  }) = ResetPasswordStateVerifyOtpSuccess;
  const factory ResetPasswordState.resetPasswordSuccess() =
      ResetPasswordStateResetPasswordSuccess;
  const factory ResetPasswordState.error({required String error}) =
      ResetPasswordStateError;
  const factory ResetPasswordState.noInternet() = ResetPasswordStateNoInternet;
  const factory ResetPasswordState.unauthenticated({required String error}) =
      ResetPasswordStateUnauthenticated;
  const factory ResetPasswordState.resentResetPasswordOtpSuccess() =
      ResetPasswordStateResentResetPasswordOtpSuccess;
}
