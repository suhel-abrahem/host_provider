import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/signup_model.dart';
import '../entities/signup_info_entity.dart';
import '../repositories/signup_repository.dart';

class SignupUsecase
    implements UseCase<DataState<SignupInfoEntity?>?, SignupModel?> {
  final SignupRepository _signupRepository;

  SignupUsecase({required SignupRepository signupRepository})
    : _signupRepository = signupRepository;

  @override
  Future<DataState<SignupInfoEntity?>?> call({SignupModel? params}) {
    return _signupRepository.signup(signupModel: params);
  }
}
