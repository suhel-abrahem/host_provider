import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/profile_model.dart';
import '../entities/time_of_entity.dart';
import '../repositories/profile_repository.dart';

class GetTimeOffUseCase
    implements UseCase<DataState<List<TimeOfEntity?>?>?, ProfileModel?> {
  final ProfileRepository _profileRepository;

  GetTimeOffUseCase(this._profileRepository);

  @override
  Future<DataState<List<TimeOfEntity?>?>?> call({ProfileModel? params}) async {
    return await _profileRepository.getTimeOff(params);
  }
}
