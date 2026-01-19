import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/profile_page/data/models/reset_password/verify_otp_model.dart';
import '/features/profile_page/domain/entities/reset_password/verify_otp_entity.dart';
import '/features/profile_page/domain/repositories/reset_password/reset_password_repository.dart';

class VerifyOtpUsecase
    implements UseCase<DataState<VerifyOtpEntity?>?, VerifyOtpModel> {
  final ResetPasswordRepository _repository;

  VerifyOtpUsecase(this._repository);
  @override
  Future<DataState<VerifyOtpEntity?>?> call({VerifyOtpModel? params}) async {
    return await _repository.verifyOtp(verifyOtpModel: params);
  }
}
