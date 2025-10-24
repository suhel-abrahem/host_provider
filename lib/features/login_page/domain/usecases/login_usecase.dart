import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/login_page/data/models/login_state_model.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/login_page/domain/repositories/login_repository.dart';

class LoginUsecase
    implements UseCase<DataState<LoginStateEntity?>?, LoginStateModel> {
  final LoginRepository _loginRepository;
  LoginUsecase(this._loginRepository);
  @override
  Future<DataState<LoginStateEntity?>?> call({LoginStateModel? params}) {
    return _loginRepository.loginUser(loginStateModel: params);
  }
}
