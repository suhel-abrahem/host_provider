import '../../../../core/data_state/data_state.dart';
import '../../data/models/set_working_hours_model.dart';
import '../entities/working_hours_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/profile_repository.dart';

class UpdateWorkingTimeUseCase
    implements
        UseCase<DataState<List<WorkingHoursEntity?>?>?, SetWorkingHoursModel?> {
  final ProfileRepository _profileRepository;
  UpdateWorkingTimeUseCase(this._profileRepository);
  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> call({
    SetWorkingHoursModel? params,
  }) async {
    return await _profileRepository.updateWorkingHours(params);
  }
}
