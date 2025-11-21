import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/login_state_model.dart';
import '../entities/login_state_entity.dart';
import '../repositories/login_repository.dart';

class LoginUsecase
    implements UseCase<DataState<LoginStateEntity?>?, LoginStateModel> {
  final LoginRepository _loginRepository;
  LoginUsecase(this._loginRepository);
  @override
  Future<DataState<LoginStateEntity?>?> call({LoginStateModel? params}) {
    return _loginRepository.loginUser(loginStateModel: params);
  }
}
