import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/set_time_off_model.dart';
import '../entities/time_of_entity.dart';
import '../repositories/profile_repository.dart' show ProfileRepository;

class SetTimeOffUseCase
    implements UseCase<DataState<TimeOfEntity?>?, SetTimeOffModel?> {
  final ProfileRepository _profileRepository;

  SetTimeOffUseCase(this._profileRepository);
  @override
  Future<DataState<TimeOfEntity?>?> call({SetTimeOffModel? params}) async {
    return await _profileRepository.setTimeOff(params);
  }
}
