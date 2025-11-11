import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/profile_page/data/models/profile_model.dart';
import 'package:hosta_provider/features/profile_page/domain/entities/profile_entity.dart';
import 'package:hosta_provider/features/profile_page/domain/repositories/profile_repository.dart';

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
