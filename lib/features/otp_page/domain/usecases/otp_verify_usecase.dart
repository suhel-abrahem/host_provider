import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/otp_page/data/models/otp_model.dart';
import 'package:hosta_provider/features/otp_page/domain/repositories/otp_verifiy_repository.dart';

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
