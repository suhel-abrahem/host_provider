import '/core/data_state/data_state.dart';
import '/features/profile_page/data/models/reset_password/request_reset_password_model.dart';
import '/features/profile_page/data/models/reset_password/resend_reset_password_otp_model.dart';
import '/features/profile_page/data/models/reset_password/reset_password_model.dart';
import '/features/profile_page/data/models/reset_password/verify_otp_model.dart';
import '/features/profile_page/domain/entities/reset_password/request_reset_password_entity.dart';
import '/features/profile_page/domain/entities/reset_password/verify_otp_entity.dart';

abstract class ResetPasswordRepository {
  Future<DataState<RequestResetPasswordEntity?>?> requestResetPassword({
    RequestResetPasswordModel? requestResetPasswordModel,
  });
  Future<DataState<VerifyOtpEntity?>?> verifyOtp({
    VerifyOtpModel? verifyOtpModel,
  });
  Future<DataState<void>?> resetPassword({
    ResetPasswordModel? resetPasswordModel,
  });
  Future<DataState<void>?> resendOtp({
    ResendResetPasswordOtpModel? resendResetPasswordOtpModel,
  });
}
