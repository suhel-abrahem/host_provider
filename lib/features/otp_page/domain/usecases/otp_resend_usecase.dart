import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/otp_model.dart';
import '../repositories/otp_verifiy_repository.dart';

class OtpResendUseCase
    implements UseCase<DataState<LoginStateEntity?>?, OtpModel> {
  final OtpVerifyRepository otpVerifyRepository;

  OtpResendUseCase({required this.otpVerifyRepository});
  @override
  Future<DataState<LoginStateEntity?>?> call({OtpModel? params}) async {
    return await otpVerifyRepository.resend(otpModel: params);
  }
}
