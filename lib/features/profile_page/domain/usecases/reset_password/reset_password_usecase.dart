import '../../../../../core/data_state/data_state.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/reset_password/reset_password_model.dart';
import '../../repositories/reset_password/reset_password_repository.dart';

class ResetPasswordUsecase
    implements UseCase<DataState<void>?, ResetPasswordModel> {
  final ResetPasswordRepository _repository;
  ResetPasswordUsecase(this._repository);
  @override
  Future<DataState<void>?> call({ResetPasswordModel? params}) async {
    return await _repository.resetPassword(resetPasswordModel: params);
  }
}
