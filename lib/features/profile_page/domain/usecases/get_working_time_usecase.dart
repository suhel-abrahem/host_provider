import '../../../../core/data_state/data_state.dart';
import '../../data/models/profile_model.dart';
import '../entities/working_hours_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/profile_repository.dart';

class GetWorkingTimeUseCase
    implements UseCase<DataState<List<WorkingHoursEntity?>?>?, ProfileModel?> {
  final ProfileRepository _profileRepository;
  GetWorkingTimeUseCase(this._profileRepository);
  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> call({
    ProfileModel? params,
  }) async {
    return await _profileRepository.getWorkingHours(params);
  }
}
