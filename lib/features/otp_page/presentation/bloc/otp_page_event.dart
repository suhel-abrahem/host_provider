part of 'otp_page_bloc.dart';

@freezed
class OtpPageEvent with _$OtpPageEvent {
  const factory OtpPageEvent.started() = OtpPageEventStarted;
  const factory OtpPageEvent.verify(OtpModel? otpModel) = OtpPageEventVerify;
  const factory OtpPageEvent.resend(OtpModel? otpModel) = OtpPageEventResend;
}
