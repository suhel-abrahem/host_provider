part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.started() = ResetPasswordEventStarted;
  const factory ResetPasswordEvent.requestResetPassword({
    required RequestResetPasswordModel? requestResetPasswordModel,
  }) = ResetPasswordEventRequestResetPassword;
  const factory ResetPasswordEvent.verifyOtp({
    required VerifyOtpModel? verifyOtpModel,
  }) = ResetPasswordEventVerifyOtp;
  const factory ResetPasswordEvent.resetPassword({
    required ResetPasswordModel? resetPasswordModel,
  }) = ResetPasswordEventResetPassword;
  const factory ResetPasswordEvent.resentResetPasswordOtp({
    required ResendResetPasswordOtpModel? resendResetPasswordOtpModel,
  }) = ResetPasswordEventResentResetPasswordOtp;
}
