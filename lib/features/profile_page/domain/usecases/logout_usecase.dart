import '../../../../core/usecase/usecase.dart';
import '../../data/models/profile_model.dart';
import '../repositories/profile_repository.dart';

import '../../../../core/data_state/data_state.dart';

class LogoutUseCase implements UseCase<DataState<void>?, ProfileModel> {
  final ProfileRepository _profileRepository;
  LogoutUseCase(this._profileRepository);
  @override
  Future<DataState<void>?> call({ProfileModel? params}) async {
    return await _profileRepository.logout(params);
  }
}
