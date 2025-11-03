import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';

import 'package:hosta_provider/features/signup_page/domain/repositories/signup_repository.dart';

import '../entities/signup_info_entity.dart';

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
