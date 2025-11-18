import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/profile_page/domain/entities/working_hours_entity.dart';
import 'package:hosta_provider/features/profile_page/domain/repositories/profile_repository.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/models/set_working_hours_model.dart';

class SetWorkingTimeUseCase
    implements
        UseCase<DataState<List<WorkingHoursEntity?>?>?, SetWorkingHoursModel?> {
  final ProfileRepository _profileRepository;
  SetWorkingTimeUseCase(this._profileRepository);
  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> call({
    SetWorkingHoursModel? params,
  }) async {
    // Implementation of the use case
    return await _profileRepository.setWorkingHours(params);
  }

  // Implementation of the use case
}
