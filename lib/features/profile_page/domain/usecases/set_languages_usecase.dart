import '../../data/models/language_model.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/language_entity.dart';
import '../repositories/profile_repository.dart';

class SetLanguagesUseCase
    implements UseCase<DataState<List<LanguageEntity?>?>?, LanguageModel?> {
  final ProfileRepository _profileRepository;

  SetLanguagesUseCase(this._profileRepository);

  @override
  Future<DataState<List<LanguageEntity?>?>?> call({
    LanguageModel? params,
  }) async {
    return await _profileRepository.updateLanguage(params);
  }
}
