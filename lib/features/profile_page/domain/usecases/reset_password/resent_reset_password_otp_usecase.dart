import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/profile_page/data/models/reset_password/resend_reset_password_otp_model.dart';

import '../../repositories/reset_password/reset_password_repository.dart';

class ResentResetPasswordOtpUsecase
    implements UseCase<DataState<void>?, ResendResetPasswordOtpModel> {
  final ResetPasswordRepository _resetPasswordRepository;
  ResentResetPasswordOtpUsecase(this._resetPasswordRepository);
  @override
  Future<DataState<void>?> call({ResendResetPasswordOtpModel? params}) async {
    return await _resetPasswordRepository.resendOtp(
      resendResetPasswordOtpModel: params,
    );
  }
}
