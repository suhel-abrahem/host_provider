import '/core/data_state/data_state.dart';
import '/core/usecase/usecase.dart';
import '/features/profile_page/domain/repositories/profile_repository.dart';

import '../../data/models/profile_model.dart';

class DeleteAccountUsecase implements UseCase<DataState<void>?, ProfileModel?> {
  final ProfileRepository _profileRepository;
  DeleteAccountUsecase(this._profileRepository);
  @override
  Future<DataState<void>?> call({ProfileModel? params}) async {
    return await _profileRepository.deleteAccount(params);
  }
}
