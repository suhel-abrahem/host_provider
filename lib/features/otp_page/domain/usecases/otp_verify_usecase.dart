import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../login_page/domain/entities/login_state_entity.dart';
import '../../data/models/otp_model.dart';
import '../repositories/otp_verifiy_repository.dart';

class OtpVerifyUsecase
    implements UseCase<DataState<LoginStateEntity?>?, OtpModel> {
  final OtpVerifyRepository _otpVerifyRepository;

  OtpVerifyUsecase({required OtpVerifyRepository otpVerifyRepository})
    : _otpVerifyRepository = otpVerifyRepository;
  @override
  Future<DataState<LoginStateEntity?>?> call({OtpModel? params}) {
    return _otpVerifyRepository.verify(otpModel: params);
  }
}
