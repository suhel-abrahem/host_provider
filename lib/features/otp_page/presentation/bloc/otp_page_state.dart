part of 'otp_page_bloc.dart';

@freezed
class OtpPageState with _$OtpPageState {
  const factory OtpPageState.initial() = OtpPageStateInitial;
  const factory OtpPageState.error() = OtpPageStateError;
  const factory OtpPageState.loading() = OtpPageStateLoading;
  const factory OtpPageState.verified(LoginStateEntity? loginStateEntity) =
      OtpPageStateVerified;
  const factory OtpPageState.resent(LoginStateEntity? loginStateEntity) =
      OtpPageStateResent;
  const factory OtpPageState.tooManyRequests({
    required LoginStateEntity? loginStateEntity,
  }) = OtpPageStateTooManyRequests;
}
