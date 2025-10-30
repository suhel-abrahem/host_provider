import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/signup_repository.dart';

class SignupUsecase
    implements UseCase<DataState<SignupEntity?>?, SignupModel?> {
  final SignupRepository _signupRepository;

  SignupUsecase({required SignupRepository signupRepository})
    : _signupRepository = signupRepository;

  @override
  Future<DataState<SignupEntity?>?> call({SignupModel? params}) {
    return _signupRepository.signup(signupModel: params);
  }
}
