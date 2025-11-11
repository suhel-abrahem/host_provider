import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/profile_page/data/models/set_working_hours_model.dart';
import 'package:hosta_provider/features/profile_page/domain/entities/working_hours_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/profile_repository.dart';

class UpdateWorkingTimeUseCase
    implements UseCase<DataState<WorkingHoursEntity?>?, SetWorkingHoursModel?> {
  final ProfileRepository _profileRepository;
  UpdateWorkingTimeUseCase(this._profileRepository);
  @override
  Future<DataState<WorkingHoursEntity?>?> call({
    SetWorkingHoursModel? params,
  }) async {
    return await _profileRepository.updateWorkingHours(params);
  }
}
