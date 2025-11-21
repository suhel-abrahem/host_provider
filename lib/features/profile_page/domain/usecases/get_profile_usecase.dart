import '../../../../core/data_state/data_state.dart';
import '../../data/models/profile_model.dart';
import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

import '../../../../core/usecase/usecase.dart';

class GetProfileUseCase
    implements UseCase<DataState<ProfileEntity?>?, ProfileModel?> {
  final ProfileRepository _profileRepository;

  GetProfileUseCase(this._profileRepository);

  @override
  Future<DataState<ProfileEntity?>?> call({ProfileModel? params}) async {
    return await _profileRepository.getProfile(params);
  }
}
